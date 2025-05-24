import Foundation

///
/// Utility extensions for `Encodable` types to simplify JSON encoding and conversions to common formats.
///
public extension Encodable {
    
    ///
    /// Encodes the current instance into `Data` using the specified `JSONEncoder`.
    ///
    /// - Parameter encoder: The `JSONEncoder` to use. Defaults to `.standard`.
    /// - Returns: A `Data` representation of the encoded object, or `nil` if encoding fails.
    ///
    /// ### Example:
    /// ```swift
    /// struct User: Encodable {
    ///     let name: String
    ///     let age: Int
    /// }
    ///
    /// let user = User(name: "Letícia", age: 28)
    /// let data = user.encode()
    /// ```
    ///
    func encode(encoder: JSONEncoder = .standard) -> Data? {
        try? encoder.encode(self)
    }
    
    ///
    /// Encodes the current instance into a JSON-formatted `String`.
    ///
    /// - Parameter prettyPrinted: If `true`, the output will be formatted with line breaks and indentation. Defaults to `false`.
    /// - Returns: A JSON `String` representation of the object, or `nil` if encoding fails.
    ///
    /// ### Example:
    /// ```swift
    /// let user = User(name: "Letícia", age: 28)
    /// let json = user.encodeToString(prettyPrinted: true)
    /// ```
    ///
    func encodeToString(prettyPrinted: Bool = false) -> String? {
        let encoder = JSONEncoder()
        if prettyPrinted {
            encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        }
        guard let data = try? encoder.encode(self) else { return nil }
        return String(data: data, encoding: .utf8)
    }
    
    ///
    /// Converts the current instance into a `[String: Any]` dictionary using `JSONSerialization`.
    ///
    /// This property encodes the instance to `Data`, then deserializes it back into a dictionary.
    ///
    /// - Returns: A dictionary representation of the object, or `nil` if encoding or serialization fails.
    ///
    /// ### Example:
    /// ```swift
    /// let user = User(name: "Letícia", age: 28)
    /// let dict = user.dictionary
    /// // dict = ["name": "Letícia", "age": 28]
    /// ```
    ///
    var dictionary: [String: Any]? {
        guard let data = encode() else { return nil }
        return (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
    }
}
