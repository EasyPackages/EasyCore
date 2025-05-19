import Foundation

public extension String {
    
    ///
    /// Removes all occurrences of the specified substring from the current string.
    ///
    /// - Parameter value: The substring to be removed.
    /// - Returns: A new string with all instances of `value` removed.
    ///
    /// ### Example:
    /// ```swift
    /// let result = "123.45 BRL".removeOcurrencing("BRL")
    /// // result == "123.45 "
    /// ```
    ///
    func removeOcurrencing(_ value: String) -> String {
        replacingOccurrences(of: value, with: String())
    }
    
    ///
    /// Indicates whether the string contains only numeric characters.
    ///
    /// - Returns: `true` if the string is not blank and consists entirely of digits; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// "12345".isNumeric  // true
    /// "12a45".isNumeric  // false
    /// "".isNumeric       // false
    /// ```
    ///
    var isNumeric: Bool {
        return !isBlank && allSatisfy { $0.isNumber }
    }
    
    ///
    /// Indicates whether the string contains only alphabetic characters.
    ///
    /// - Returns: `true` if the string is not blank and consists entirely of letters; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// "Hello".isAlphabetic  // true
    /// "Hello1".isAlphabetic // false
    /// "   ".isAlphabetic    // false
    /// ```
    ///
    var isAlphabetic: Bool {
        return !isBlank && allSatisfy { $0.isLetter }
    }
    
    ///
    /// Indicates whether the string is empty or consists only of whitespace and newline characters.
    ///
    /// - Returns: `true` if the string is blank; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// "".isBlank         // true
    /// "   \n".isBlank    // true
    /// "Hello".isBlank    // false
    /// ```
    ///
    var isBlank: Bool {
        trimmed().isEmpty
    }
    
    ///
    /// Returns a copy of the string with leading and trailing whitespace and newline characters removed.
    ///
    /// - Returns: A trimmed version of the string.
    ///
    /// ### Example:
    /// ```swift
    /// "  Hello  \n".trimmed()  // "Hello"
    /// ```
    ///
    func trimmed() -> String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    ///
    /// Indicates whether the string is in a valid email format.
    ///
    /// - Returns: `true` if the string matches a basic email pattern; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// "user@example.com".isEmail     // true
    /// "invalid-email.com".isEmail   // false
    /// ```
    ///
    var isEmail: Bool {
        NSPredicate(
            format: "SELF MATCHES %@",
            #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        )
        .evaluate(with: self)
    }
}
