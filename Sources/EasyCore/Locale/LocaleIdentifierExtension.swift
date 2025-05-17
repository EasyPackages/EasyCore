import Foundation

public extension LocaleIdentifier {
    
    /// Returns a `Locale` instance created from the enum's raw value.
    ///
    /// This allows easy access to a `Foundation.Locale` based on the `LocaleIdentifier` case.
    ///
    /// - Returns: A `Locale` constructed from the raw string value of the enum case.
    ///
    /// - Example:
    /// ```swift
    /// let identifier = LocaleIdentifier.ptBR
    /// let locale = identifier.locale
    /// print(locale.identifier) // "pt_BR"
    /// ```
    var locale: Locale? {
        Locale(identifier: rawValue)
    }
}
