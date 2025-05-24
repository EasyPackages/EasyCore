import Testing

@testable import EasyCore

@Suite("Number")
struct NumberTests {
    @Suite("Double validations")
    struct DoubleValidationTests {

        @Test("isPositive returns true for values greater than zero")
        func positiveValue() {
            let value: Double = 3.14
            #expect(value.isPositive)
        }

        @Test("isPositive returns false for zero or negative values")
        func notPositive() {
            #expect((-1.0).isPositive == false)
            #expect(0.0.isPositive == false)
        }

        @Test("isNegative returns true for values less than zero")
        func negativeValue() {
            let value: Double = -2.5
            #expect(value.isNegative)
        }

        @Test("isNegative returns false for zero or positive values")
        func notNegative() {
            #expect(1.0.isNegative == false)
            #expect(0.0.isNegative == false)
        }

        @Test("isZero returns true for exactly 0.0")
        func isZeroValue() {
            let value: Double = 0.0
            #expect(value.isZero)
        }

        @Test("isZero returns false for non-zero values")
        func notZero() {
            #expect(1.0.isZero == false)
            #expect((-0.1).isZero == false)
        }

        @Test("isInRange returns true for values within range")
        func inRange() {
            let value: Double = 5.5
            #expect(value.isInRange(5.0...6.0))
        }

        @Test("isInRange returns false for values outside range")
        func outOfRange() {
            let value: Double = 7.0
            #expect(value.isInRange(1.0...5.0) == false)
        }

        @Test("isInRange returns true for boundary values")
        func boundaryValues() {
            let value1: Double = 10.0
            let value2: Double = 20.0
            #expect(value1.isInRange(10.0...20.0))
            #expect(value2.isInRange(10.0...20.0))
        }
    }
    
    @Suite("Float validations")
    struct FloatValidationTests {
        
        @Test("isPositive returns true for positive values")
        func isPositiveTrue() {
            let value: Float = 3.14
            #expect(value.isPositive)
        }

        @Test("isPositive returns false for zero and negative values")
        func isPositiveFalse() {
            #expect(Float(0).isPositive == false)
            #expect(Float(-1).isPositive == false)
        }

        @Test("isNegative returns true for negative values")
        func isNegativeTrue() {
            let value: Float = -5.6
            #expect(value.isNegative)
        }

        @Test("isNegative returns false for zero and positive values")
        func isNegativeFalse() {
            #expect(Float(0).isNegative == false)
            #expect(Float(2.2).isNegative == false)
        }

        @Test("isZero returns true for exactly 0.0")
        func isZeroTrue() {
            let value: Float = 0.0
            #expect(value.isZero)
        }

        @Test("isZero returns false for non-zero values")
        func isZeroFalse() {
            #expect(Float(1).isZero == false)
            #expect(Float(-0.001).isZero == false)
        }

        @Test("isInRange returns true for values within range")
        func inRangeTrue() {
            let value: Float = 7.5
            #expect(value.isInRange(5.0...10.0))
        }

        @Test("isInRange returns false for values outside range")
        func inRangeFalse() {
            let value: Float = 11.0
            #expect(value.isInRange(0.0...10.0) == false)
        }

        @Test("isInRange returns true for values at the boundaries")
        func inRangeBoundaries() {
            let value1: Float = 0.0
            let value2: Float = 10.0
            #expect(value1.isInRange(0.0...10.0))
            #expect(value2.isInRange(0.0...10.0))
        }
    }

    @Suite("Int validations")
    struct IntValidationTests {
        
        @Test("isPositive returns true for values greater than zero")
        func isPositiveTrue() {
            let value = 10
            #expect(value.isPositive)
        }

        @Test("isPositive returns false for zero and negative values")
        func isPositiveFalse() {
            #expect(0.isPositive == false)
            #expect((-5).isPositive == false)
        }

        @Test("isNegative returns true for values less than zero")
        func isNegativeTrue() {
            let value = -42
            #expect(value.isNegative)
        }

        @Test("isNegative returns false for zero and positive values")
        func isNegativeFalse() {
            #expect(0.isNegative == false)
            #expect(3.isNegative == false)
        }

        @Test("isZero returns true for exactly zero")
        func isZeroTrue() {
            #expect(0.isZero)
        }

        @Test("isZero returns false for non-zero values")
        func isZeroFalse() {
            #expect(1.isZero == false)
            #expect((-1).isZero == false)
        }

        @Test("isInRange returns true for values within the range")
        func inRangeTrue() {
            let value = 50
            #expect(value.isInRange(0...100))
        }

        @Test("isInRange returns false for values outside the range")
        func inRangeFalse() {
            let value = -10
            #expect(value.isInRange(0...100) == false)
        }

        @Test("isInRange returns true for values at the edges of the range")
        func inRangeBoundary() {
            #expect(0.isInRange(0...10))
            #expect(10.isInRange(0...10))
        }
    }
}
