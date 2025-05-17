///
/// Generic utility for any `Optional`, allowing a default fallback value.
///
/// Simplifies optional handling by avoiding manual `nil` checks.
///
/// - Example:
/// ```swift
/// let name: String? = nil
/// print(name.or(default: "Guest")) // "Guest"
/// ```
///
public extension Optional {
    ///
    /// Returns the value if not `nil`, or the specified default.
    ///
    /// - Parameter defaultValue: The value to return if the optional is `nil`.
    /// - Returns: The unwrapped value or the default.
    ///
    @inlinable func or(default defaultValue: Wrapped) -> Wrapped {
        self ?? defaultValue
    }
}
