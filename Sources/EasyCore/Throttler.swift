import Foundation

///
/// A utility that limits the rate at which a block of code can be executed.
///
/// Use `Throttler` to prevent a block from being called more than once within a specified time interval.
/// This is useful for scenarios like handling rapid user input, scroll events, or network requests where excessive frequency can be problematic.
///
public final class Throttler {
    private let delay: TimeInterval
    private var lastExecution: Date?
    private var workItem: DispatchWorkItem?

    ///
    /// Creates a new `Throttler` instance with the given delay.
    ///
    /// - Parameter delay: The minimum time interval (in seconds) between allowed executions.
    ///
    /// ### Example:
    /// ```swift
    /// let throttler = Throttler(delay: 1.0)
    /// ```
    ///
    public init(delay: TimeInterval) {
        self.delay = delay
    }

    ///
    /// Attempts to execute the given block if enough time has passed since the last execution.
    ///
    /// If the time since the last execution is less than the configured delay, the block is ignored.
    ///
    /// - Parameter block: The closure to execute, if allowed.
    ///
    /// ### Example:
    /// ```swift
    /// throttler.call {
    ///     print("Executed at most once per second")
    /// }
    /// ```
    ///
    public func call(_ block: @escaping () -> Void) {
        let now = Date()
        
        if let last = lastExecution, now.timeIntervalSince(last) < delay {
            return
        }

        workItem?.cancel()
        workItem = DispatchWorkItem(block: block)
        lastExecution = now

        if let workItem = workItem {
            DispatchQueue.main.async(execute: workItem)
        }
    }
}
