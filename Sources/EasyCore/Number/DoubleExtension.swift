import Foundation

public extension Double {
    
    ///
    /// Indicates whether the value is greater than zero.
    ///
    /// - Returns: `true` if the value is positive; otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let value = 3.14
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
    /// let value = -7.5
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
    /// let value = 0.0
    /// value.isZero  // true
    /// ```
    ///
    var isZero: Bool {
        self == 0
    }
    
    ///
    /// Checks whether the current value falls within the specified closed range.
    ///
    /// - Parameter range: A closed range (`ClosedRange<Double>`) to check against.
    /// - Returns: `true` if the value is within the range (inclusive); otherwise, `false`.
    ///
    /// ### Example:
    /// ```swift
    /// let temperature = 22.5
    /// temperature.isInRange(20.0...25.0)  // true
    /// ```
    /// 
    func isInRange(_ range: ClosedRange<Self>) -> Bool {
        range.contains(self)
    }
}
