import Foundation

///
/// A set of convenient static and instance properties to create preconfigured `JSONDecoder` instances
/// with commonly used strategies for decoding keys and dates.
///
public extension JSONDecoder {
    
    ///
    /// A standard `JSONDecoder` instance with default decoding strategies.
    ///
    /// This is the base decoder without any custom strategies applied.
    ///
    /// ### Example:
    /// ```swift
    /// let decoder = JSONDecoder.standard
    /// ```
    ///
    @inlinable static var standard: JSONDecoder {
        JSONDecoder()
    }
    
    ///
    /// A `JSONDecoder` configured to decode snake_case keys into camelCase properties.
    ///
    /// Equivalent to setting `.keyDecodingStrategy = .convertFromSnakeCase`.
    ///
    /// ### Example:
    /// ```swift
    /// let decoder = JSONDecoder.snakeCase
    /// ```
    ///
    static var snakeCase: JSONDecoder {
        standard.snakeCase
    }
    
    ///
    /// A `JSONDecoder` configured to decode ISO 8601 date strings.
    ///
    /// Equivalent to setting `.dateDecodingStrategy = .iso8601`.
    ///
    /// ### Example:
    /// ```swift
    /// let decoder = JSONDecoder.iso8601
    /// ```
    ///
    static var iso8601: JSONDecoder {
        standard.iso8601
    }
    
    ///
    /// A `JSONDecoder` configured to decode dates as seconds since 1970 (Unix timestamp).
    ///
    /// Equivalent to setting `.dateDecodingStrategy = .secondsSince1970`.
    ///
    /// ### Example:
    /// ```swift
    /// let decoder = JSONDecoder.secondsSince1970
    /// ```
    ///
    static var secondsSince1970: JSONDecoder {
        standard.secondsSince1970
    }
    
    ///
    /// Creates a `JSONDecoder` configured to decode dates using a custom `DateFormatter`.
    ///
    /// - Parameter formatter: The `DateFormatter` used to parse date strings.
    /// - Returns: A configured `JSONDecoder` instance.
    ///
    /// ### Example:
    /// ```swift
    /// let formatter = DateFormatter()
    /// formatter.dateFormat = "yyyy-MM-dd"
    /// let decoder = JSONDecoder.formatted(using: formatter)
    /// ```
    ///
    static func formatted(using formatter: DateFormatter) -> JSONDecoder {
        standard.formatted(using: formatter)
    }
    
    ///
    /// Applies snake_case key decoding to the current decoder instance.
    ///
    /// - Returns: The same decoder with `.convertFromSnakeCase` strategy applied.
    ///
    var snakeCase: JSONDecoder {
        keyDecodingStrategy = .convertFromSnakeCase
        return self
    }
    
    ///
    /// Applies ISO 8601 date decoding to the current decoder instance.
    ///
    /// - Returns: The same decoder with `.iso8601` date strategy applied.
    ///
    var iso8601: JSONDecoder {
        dateDecodingStrategy = .iso8601
        return self
    }
    
    ///
    /// Applies Unix timestamp (seconds since 1970) date decoding to the current decoder instance.
    ///
    /// - Returns: The same decoder with `.secondsSince1970` date strategy applied.
    ///
    var secondsSince1970: JSONDecoder {
        dateDecodingStrategy = .secondsSince1970
        return self
    }
    
    ///
    /// Applies a custom `DateFormatter` for decoding dates to the current decoder instance.
    ///
    /// - Parameter formatter: The `DateFormatter` to use.
    /// - Returns: The same decoder with `.formatted(formatter)` date decoding strategy applied.
    ///
    func formatted(using formatter: DateFormatter) -> JSONDecoder {
        dateDecodingStrategy = .formatted(formatter)
        return self
    }
}
