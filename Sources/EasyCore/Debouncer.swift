import Foundation

///
/// A utility class that delays the execution of a block of code until a specified time interval has passed since the last call.
///
/// Useful for scenarios where you want to limit the number of times a function is executed,
/// such as reacting to user input, search queries, or other high-frequency events.
///
/// Each call to `call(_:)` resets the timer. The block will only be executed if no further calls are made within the delay interval.
///
public final class Debouncer {
    
    ///
    /// The delay interval before the block is executed.
    ///
    private let delay: TimeInterval
    
    ///
    /// The currently scheduled work item, if any.
    ///
    private var workItem: DispatchWorkItem?

    ///
    /// Initializes a new `Debouncer` with the specified delay interval.
    ///
    /// - Parameter delay: The time interval (in seconds) to wait after the last call before executing the block.
    ///
    /// ### Example:
    /// ```swift
    /// let debouncer = Debouncer(delay: 0.3)
    /// ```
    ///
    public init(delay: TimeInterval) {
        self.delay = delay
    }

    ///
    /// Schedules a block to be executed after the specified delay.
    ///
    /// If this method is called again before the delay elapses, the previous block is cancelled and the timer resets.
    ///
    /// - Parameter block: The closure to execute after the delay.
    ///
    /// ### Example:
    /// ```swift
    /// debouncer.call {
    ///     print("This will only print if no other call occurs in the next 0.3 seconds.")
    /// }
    /// ```
    /// 
    public func call(_ block: @escaping () -> Void) {
        workItem?.cancel()
        workItem = DispatchWorkItem(block: block)
        if let workItem = workItem {
            DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: workItem)
        }
    }
}
