import Foundation

///
/// Utility extensions for arrays whose elements conform to `Hashable`, enabling operations like duplicate removal.
///
public extension Array where Element: Hashable {
    
    ///
    /// Returns a new array containing only the unique elements from the original collection, preserving their original order.
    ///
    /// This computed property creates a new array by eliminating duplicate elements, while keeping the first occurrence of each.
    ///
    /// Any repeated elements are ignored after their first appearance.
    ///
    /// ### Complexity:
    /// - Time: O(n), where n is the number of elements in the array.
    /// - Space: O(n), to store previously seen elements in a `Set`.
    ///
    /// ### Example:
    /// ```swift
    /// let values = [1, 2, 2, 3, 1, 4]
    /// let uniqueValues = values.uniqued
    /// // Result: [1, 2, 3, 4]
    /// ```
    ///
    /// - Returns: A new array with duplicates removed, preserving the original order.
    ///
    var uniqued: [Element] {
        var seen: Set<Element> = []
        return filter { seen.insert($0).inserted }
    }
}
