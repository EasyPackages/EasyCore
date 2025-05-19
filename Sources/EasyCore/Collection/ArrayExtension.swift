import Foundation

public extension Array {
    
    ///
    /// Safely accesses an element at the specified index.
    ///
    /// Returns the element at the given index, or `nil` if the index is out of bounds.
    ///
    /// Use this subscript to avoid runtime crashes caused by out-of-range index access, especially when working with dynamic indices.
    ///
    /// - Parameter index: The index of the desired element.
    /// - Returns: The element at the given index, or `nil` if the index is invalid.
    ///
    /// ### Example:
    /// ```swift
    /// let names = ["Anna", "Brian", "Carlos"]
    /// names[safe: 1]    // "Brian"
    /// names[safe: 5]    // nil
    /// ```
    ///
    subscript(safe index: Int) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
    
    ///
    /// Splits the array into multiple subarrays ("chunks") with a maximum specified size.
    ///
    /// Each subarray will contain at most `size` elements. The last chunk may contain fewer elements if the total count is not a multiple of `size`.
    ///
    /// - Parameter size: The maximum size of each chunk. Must be greater than zero.
    /// - Returns: An array of subarrays containing the original elements in order.
    ///
    /// ### Example:
    /// ```swift
    /// let numbers = [1, 2, 3, 4, 5, 6, 7]
    /// let chunks = numbers.chunked(by: 3)
    /// // Result: [[1, 2, 3], [4, 5, 6], [7]]
    /// ```
    ///
    /// - Note: If `size <= 0`, the result will be an empty array (`[]`).
    /// 
    func chunked(by size: Int) -> [[Element]] {
        guard size > 0 else { return [] }
        
        var chunks: [[Element]] = []
        var currentIndex = 0
        
        while currentIndex < count {
            let endIndex = Swift.min(currentIndex + size, count)
            let chunk = Array(self[currentIndex..<endIndex])
            chunks.append(chunk)
            currentIndex += size
        }
        
        return chunks
    }
}
