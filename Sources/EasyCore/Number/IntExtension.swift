import Foundation

public extension Int {
    
    ///
    /// Indicates whether the value is greater than zero.
    ///
    /// - Returns: `true` if the value is positive; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let count = 5
    /// count.isPositive  // true
    /// ```
    ///
    var isPositive: Bool {
        self > 0
    }
    
    ///
    /// Indicates whether the value is less than zero.
    ///
    /// - Returns: `true` if the value is negative; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let delta = -3
    /// delta.isNegative  // true
    /// ```
    ///
    var isNegative: Bool {
        self < 0
    }
    
    ///
    /// Indicates whether the value is exactly zero.
    ///
    /// - Returns: `true` if the value is zero; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let total = 0
    /// total.isZero  // true
    /// ```
    ///
    var isZero: Bool {
        self == 0
    }
    
    ///
    /// Checks whether the current value falls within the specified closed range.
    ///
    /// - Parameter range: A closed range (`ClosedRange<Int>`) to check against.
    /// - Returns: `true` if the value is within the range (inclusive); otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let score = 85
    /// score.isInRange(0...100)  // true
    /// ```
    ///
    func isInRange(_ range: ClosedRange<Self>) -> Bool {
        range.contains(self)
    }
}
