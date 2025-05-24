import Foundation

public extension Float {
    
    ///
    /// Indicates whether the value is greater than zero.
    ///
    /// - Returns: `true` if the value is positive; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let value: Float = 3.14
    /// value.isPositive  // true
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
    /// let value: Float = -2.7
    /// value.isNegative  // true
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
    /// let value: Float = 0.0
    /// value.isZero  // true
    /// ```
    ///
    var isZero: Bool {
        self == 0
    }
    
    ///
    /// Checks whether the current value falls within the specified closed range.
    ///
    /// - Parameter range: A closed range (`ClosedRange<Float>`) to check against.
    /// - Returns: `true` if the value is within the range (inclusive); otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let score: Float = 7.5
    /// score.isInRange(0.0...10.0)  // true
    /// ```
    ///
    func isInRange(_ range: ClosedRange<Self>) -> Bool {
        range.contains(self)
    }
}
