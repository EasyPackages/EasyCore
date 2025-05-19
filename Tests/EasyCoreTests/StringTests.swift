import Testing

@testable import EasyCore

@Suite("String")
struct StringTests {
    @Suite("Optional<String>.isBlank")
    struct OptionalStringIsBlankTests {

        @Test("Returns true for nil optional")
        func nilOptional() {
            let value: String? = nil
            #expect(value.isBlank)
        }

        @Test("Returns true for empty string")
        func emptyString() {
            let value: String? = ""
            #expect(value.isBlank)
        }

        @Test("Returns true for whitespace-only string")
        func whitespaceOnly() {
            let value: String? = "   \n\t  "
            #expect(value.isBlank)
        }

        @Test("Returns false for non-blank string")
        func nonBlank() {
            let value: String? = "Letícia"
            #expect(value.isBlank == false)
        }

        @Test("Returns false for string with leading/trailing whitespace but text inside")
        func mixedWhitespace() {
            let value: String? = "  Hello  "
            #expect(value.isBlank == false)
        }
    }

    @Suite("String validations")
    struct StringValidationTests {

        @Test("removeOcurrencing removes all instances of a substring")
        func removeOcurrencingWorks() {
            let input = "123.45 BRL"
            let result = input.removeOcurrencing("BRL")
            #expect(result == "123.45 ")
        }

        @Test("isNumeric returns true for strings with only digits")
        func isNumericTrue() {
            let value = "1234567890"
            #expect(value.isNumeric)
        }

        @Test("isNumeric returns false for strings with letters or symbols")
        func isNumericFalse() {
            #expect("123abc".isNumeric == false)
            #expect("".isNumeric == false)
            #expect("   ".isNumeric == false)
        }

        @Test("isAlphabetic returns true for strings with only letters")
        func isAlphabeticTrue() {
            let value = "HelloWorld"
            #expect(value.isAlphabetic)
        }

        @Test("isAlphabetic returns false for strings with numbers or symbols")
        func isAlphabeticFalse() {
            #expect("Hello123".isAlphabetic == false)
            #expect("   ".isAlphabetic == false)
            #expect("".isAlphabetic == false)
        }

        @Test("isBlank returns true for empty and whitespace-only strings")
        func isBlankTrue() {
            #expect("".isBlank)
            #expect("   ".isBlank)
            #expect("\n\t ".isBlank)
        }

        @Test("isBlank returns false for non-blank strings")
        func isBlankFalse() {
            #expect("text".isBlank == false)
            #expect("  text  ".isBlank == false)
        }

        @Test("trimmed removes leading and trailing whitespace and newlines")
        func trimmedResult() {
            let input = "  Hello \n"
            let result = input.trimmed()
            #expect(result == "Hello")
        }

        @Test("isEmail returns true for valid email format")
        func isEmailTrue() {
            #expect("user@example.com".isEmail)
            #expect("leticia.speda@domain.co".isEmail)
        }

        @Test("isEmail returns false for invalid email format")
        func isEmailFalse() {
            #expect("not-an-email".isEmail == false)
            #expect("missing@domain".isEmail == false)
            #expect("missing.com".isEmail == false)
            #expect("@missingusername.com".isEmail == false)
        }
    }
}
