import Foundation

///
/// A utility namespace that provides safe and convenient methods for executing code on the main thread.
///
public enum MainThread {
    
    ///
    /// Executes a block of code on the main thread, immediately if already on it, or asynchronously if not.
    ///
    /// This ensures thread-safety when updating UI or performing main-thread-bound operations from a background thread.
    ///
    /// - Parameter block: A `@Sendable` closure to execute on the main thread.
    ///
    /// ### Example:
    /// ```swift
    /// MainThread.asyncSafe {
    ///     self.label.text = "Updated safely"
    /// }
    /// ```
    ///
    public static func asyncSafe(_ block: @Sendable @escaping () -> Void) {
        if Thread.isMainThread {
            block()
        } else {
            DispatchQueue.main.async { [block] in
                block()
            }
        }
    }
    
    ///
    /// Executes a block of code on the main thread after a specified delay.
    ///
    /// - Parameters:
    ///   - seconds: The delay in seconds before the block is executed.
    ///   - block: A `@Sendable` closure to execute after the delay.
    ///
    /// ### Example:
    /// ```swift
    /// MainThread.asyncAfter(seconds: 1.0) {
    ///     print("Executed after 1 second on the main thread")
    /// }
    /// ```
    /// 
    public static func asyncAfter(seconds: TimeInterval, _ block: @Sendable @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: block)
    }
}
