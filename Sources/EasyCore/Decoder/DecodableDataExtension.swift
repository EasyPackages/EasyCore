import Foundation

public extension Decodable where Self == Data {
    
    ///
    /// Decodes the current `Data` instance into a specified `Decodable` type.
    ///
    /// This method provides a convenient way to decode JSON data directly into a model object using a provided or default `JSONDecoder`.
    ///
    /// - Parameters:
    ///   - type: The `Decodable` type to decode from the data.
    ///   - decoder: An optional `JSONDecoder` to use. Defaults to `.standard`.
    /// - Returns: An instance of the decoded type `T` if decoding is successful; otherwise, `nil`.
    ///
    /// ### Example:
    /// ```swift
    /// struct User: Decodable {
    ///     let name: String
    ///     let age: Int
    /// }
    ///
    /// let jsonData = """
    /// {
    ///     "name": "Letícia",
    ///     "age": 28
    /// }
    /// """.data(using: .utf8)!
    ///
    /// let user = jsonData.decode(User.self)
    /// // user is of type `User?`
    /// ```
    ///
    func decode<T: Decodable>(_ type: T.Type, decoder: JSONDecoder = .standard) -> T? {
        try? decoder.decode(T.self, from: self)
    }
}
