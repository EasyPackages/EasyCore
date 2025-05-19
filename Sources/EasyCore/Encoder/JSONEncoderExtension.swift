import Foundation

///
/// A set of convenient static and instance properties to create preconfigured `JSONEncoder`
/// instances with commonly used strategies for encoding keys and dates.
///
public extension JSONEncoder {
    
    ///
    /// A standard `JSONEncoder` instance with default encoding strategies.
    ///
    /// This encoder uses the default key and date encoding strategies.
    ///
    /// ### Example:
    /// ```swift
    /// let encoder = JSONEncoder.standard
    /// ```
    ///
    @inlinable static var standard: JSONEncoder {
        JSONEncoder()
    }
    
    ///
    /// A `JSONEncoder` configured to convert camelCase keys to snake_case when encoding.
    ///
    /// Equivalent to setting `.keyEncodingStrategy = .convertToSnakeCase`.
    ///
    /// ### Example:
    /// ```swift
    /// let encoder = JSONEncoder.snakeCase
    /// ```
    ///
    static var snakeCase: JSONEncoder {
        standard.snakeCase
    }
    
    ///
    /// A `JSONEncoder` configured to encode dates using ISO 8601 format.
    ///
    /// Equivalent to setting `.dateEncodingStrategy = .iso8601`.
    ///
    /// ### Example:
    /// ```swift
    /// let encoder = JSONEncoder.iso8601
    /// ```
    ///
    static var iso8601: JSONEncoder {
        standard.iso8601
    }
    
    ///
    /// A `JSONEncoder` configured to encode dates as seconds since 1970 (Unix timestamp).
    ///
    /// Equivalent to setting `.dateEncodingStrategy = .secondsSince1970`.
    ///
    /// ### Example:
    /// ```swift
    /// let encoder = JSONEncoder.secondsSince1970
    /// ```
    ///
    static var secondsSince1970: JSONEncoder {
        standard.secondsSince1970
    }
    
    ///
    /// Creates a `JSONEncoder` configured to encode dates using a custom `DateFormatter`.
    ///
    /// - Parameter formatter: The `DateFormatter` to use when encoding `Date` values.
    /// - Returns: A configured `JSONEncoder` instance.
    ///
    /// ### Example:
    /// ```swift
    /// let formatter = DateFormatter()
    /// formatter.dateFormat = "yyyy-MM-dd"
    /// let encoder = JSONEncoder.formatted(using: formatter)
    /// ```
    ///
    static func formatted(using formatter: DateFormatter) -> JSONEncoder {
        standard.formatted(using: formatter)
    }
    
    ///
    /// Applies the `.convertToSnakeCase` key encoding strategy to the current encoder instance.
    ///
    /// - Returns: The same encoder instance with `.convertToSnakeCase` applied.
    ///
    var snakeCase: JSONEncoder {
        keyEncodingStrategy = .convertToSnakeCase
        return self
    }
    
    ///
    /// Applies the `.iso8601` date encoding strategy to the current encoder instance.
    ///
    /// - Returns: The same encoder instance with `.iso8601` applied.
    ///
    var iso8601: JSONEncoder {
        dateEncodingStrategy = .iso8601
        return self
    }
    
    ///
    /// Applies the `.secondsSince1970` date encoding strategy to the current encoder instance.
    ///
    /// - Returns: The same encoder instance with `.secondsSince1970` applied.
    ///
    var secondsSince1970: JSONEncoder {
        dateEncodingStrategy = .secondsSince1970
        return self
    }
    
    ///
    /// Applies a custom `DateFormatter` to encode date values in the current encoder instance.
    ///
    /// - Parameter formatter: The `DateFormatter` to use.
    /// - Returns: The same encoder instance with the custom formatter applied.
    ///
    func formatted(using formatter: DateFormatter) -> JSONEncoder {
        dateEncodingStrategy = .formatted(formatter)
        return self
    }
}
