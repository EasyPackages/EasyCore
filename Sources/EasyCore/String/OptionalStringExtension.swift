import Foundation

public extension Optional where Wrapped == String {
    
    ///
    /// Indicates whether the optional string is `nil`, empty, or contains only whitespace and newline characters.
    ///
    /// This is useful for validating optional text input where both `nil` and `"   "` should be treated as blank.
    ///
    /// - Returns: `true` if the string is `nil` or blank; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let name: String? = nil
    /// name.isBlank  // true
    ///
    /// let email: String? = "   "
    /// email.isBlank  // true
    ///
    /// let username: String? = "John"
    /// username.isBlank  // false
    /// ```
    ///
    var isBlank: Bool {
        switch self {
        case .none: true
        case .some(let value): value.isBlank
        }
    }
}
