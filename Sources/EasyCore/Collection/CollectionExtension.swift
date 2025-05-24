import Foundation

public extension Collection {
    
    ///
    /// Checks whether a given optional collection is either `nil` or empty.
    ///
    /// This static method is a convenient utility for validating optional collections in a safe and concise way.
    ///
    /// - Parameter collection: An optional collection of the same type as `Self`.
    /// - Returns: `true` if the collection is `nil` or contains no elements; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let items: [String]? = nil
    /// Collection.isNilOrEmpty(items)  // true
    ///
    /// let emptyList: [Int]? = []
    /// Collection.isNilOrEmpty(emptyList)  // true
    ///
    /// let numbers: [Int]? = [1, 2, 3]
    /// Collection.isNilOrEmpty(numbers)  // false
    /// ```
    /// 
    static func isNilOrEmpty(_ collection: Self?) -> Bool {
        collection?.isEmpty ?? true
    }
}
