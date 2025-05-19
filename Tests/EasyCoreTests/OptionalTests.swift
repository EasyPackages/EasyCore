import Testing

@testable import EasyCore

@Suite("Optional")
struct OptionalTests {
    @Suite(".or(default:)")
    struct OptionalOrDefaultTests {

        @Test("Returns wrapped value when not nil")
        func returnsWrappedValue() {
            let name: String? = "Letícia"
            let result = name.or(default: "Guest")
            #expect(result == "Letícia")
        }

        @Test("Returns default value when nil")
        func returnsDefaultValue() {
            let name: String? = nil
            let result = name.or(default: "Guest")
            #expect(result == "Guest")
        }

        @Test("Works with numeric optionals")
        func numericOptionals() {
            let age: Int? = nil
            #expect(age.or(default: 30) == 30)

            let weight: Double? = 58.6
            #expect(weight.or(default: 0.0) == 58.6)
        }

        @Test("Works with boolean optionals")
        func booleanOptionals() {
            let flag: Bool? = nil
            #expect(flag.or(default: true) == true)

            let anotherFlag: Bool? = false
            #expect(anotherFlag.or(default: true) == false)
        }
    }

}
