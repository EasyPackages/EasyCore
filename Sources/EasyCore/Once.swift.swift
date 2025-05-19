import Foundation

///
/// A utility that ensures a block of code is executed only once, in a thread-safe manner.
///
/// Use this class when you need to perform an action a single time during the lifecycle of your app,
/// such as initializing a singleton resource, logging once, or performing a setup task.
///
public final class Once: @unchecked Sendable {
    private var hasRun = false
    private let lock = NSLock()

    ///
    /// Creates a new `Once` instance.
    ///
    /// ### Example:
    /// ```swift
    /// let once = Once()
    /// ```
    ///
    public init() {}

    ///
    /// Executes the given block only once. Subsequent calls to this method will do nothing.
    ///
    /// This method is thread-safe and ensures the block is executed only a single time,
    /// even when accessed from multiple threads concurrently.
    ///
    /// - Parameter block: The closure to execute once.
    ///
    /// ### Example:
    /// ```swift
    /// let once = Once()
    ///
    /// once.run {
    ///     print("Executed only once")
    /// }
    ///
    /// once.run {
    ///     print("Will not be executed again")
    /// }
    /// ```
    /// 
    public func run(_ block: () -> Void) {
        lock.lock()
        defer { lock.unlock() }

        guard !hasRun else { return }
        hasRun = true
        block()
    }
}
