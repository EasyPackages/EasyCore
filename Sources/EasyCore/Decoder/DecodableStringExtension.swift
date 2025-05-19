import Foundation

public extension Decodable where Self == String {
    
    ///
    /// Decodes the current `String` instance, assumed to be a JSON string, into a specified `Decodable` type.
    ///
    /// This method first attempts to convert the string to UTF-8 encoded `Data`, then decodes it into the desired type using the provided or default `JSONDecoder`.
    ///
    /// - Parameters:
    ///   - type: The `Decodable` type you want to decode from the JSON string.
    ///   - decoder: An optional `JSONDecoder` to use for decoding. Defaults to `.standard`.
    /// - Returns: An instance of the decoded type `T` if decoding is successful; otherwise, `nil`.
    ///
    /// ### Example:
    /// ```swift
    /// struct User: Decodable {
    ///     let name: String
    ///     let age: Int
    /// }
    ///
    /// let json = """
    /// {
    ///     "name": "Letícia",
    ///     "age": 28
    /// }
    /// """
    ///
    /// let user = json.decode(User.self)
    /// // user is of type `User?`
    /// ```
    ///
    /// - Note: This method fails silently and returns `nil` if the string cannot be converted to UTF-8 `Data` or if decoding fails.
    ///
    func decode<T: Decodable>(_ type: T.Type, decoder: JSONDecoder = .standard) -> T? {
        guard let data = self.data(using: .utf8) else { return nil }
        return data.decode(T.self, decoder: decoder)
    }
}
