import Testing

@testable import EasyCore

@Suite("Collection")
struct CollectionExtensionTests {
    @Suite("Array")
    struct ArrayTests {
        @Test("[safe:]")
        func sage() {
            let a = [1, 2, 3]
            #expect(a[safe: 0] == 1)
            #expect(a[safe: 1] == 2)
            #expect(a[safe: 2] == 3)
            #expect(a[safe: 3] == nil)
        }
        
        @Suite(".chunked(by:)")
        struct ChunkedTests {

            @Test("Returns chunks of equal size when array size is divisible by chunk size")
            func equalChunks() {
                let input = [1, 2, 3, 4, 5, 6]
                let result = input.chunked(by: 2)
                #expect(result == [[1, 2], [3, 4], [5, 6]])
            }

            @Test("Returns last chunk with fewer elements when not divisible")
            func unevenChunks() {
                let input = [1, 2, 3, 4, 5]
                let result = input.chunked(by: 2)
                #expect(result == [[1, 2], [3, 4], [5]])
            }

            @Test("Returns single chunk when chunk size is greater than array count")
            func chunkSizeGreaterThanArray() {
                let input = [1, 2, 3]
                let result = input.chunked(by: 10)
                #expect(result == [[1, 2, 3]])
            }

            @Test("Returns empty array when chunk size is zero")
            func zeroChunkSize() {
                let input = [1, 2, 3]
                let result = input.chunked(by: 0)
                #expect(result.isEmpty)
            }

            @Test("Returns empty array when chunk size is negative")
            func negativeChunkSize() {
                let input = [1, 2, 3]
                let result = input.chunked(by: -1)
                #expect(result.isEmpty)
            }

            @Test("Returns empty array when input is empty")
            func emptyArray() {
                let input: [Int] = []
                let result = input.chunked(by: 3)
                #expect(result == [])
            }

            @Test("Returns correct number of chunks")
            func numberOfChunks() {
                let input = Array(1...10)
                let result = input.chunked(by: 4)
                #expect(result.count == 3)
            }
        }
        
        @Suite(".uniqued")
        struct UniquedTests {
            
            @Test("Removes duplicated integers while preserving order")
            func integerArray() {
                let input = [1, 2, 2, 3, 1, 4]
                let result = input.uniqued
                #expect(result == [1, 2, 3, 4])
            }

            @Test("Removes duplicated strings while preserving order")
            func stringArray() {
                let input = ["apple", "banana", "apple", "orange"]
                let result = input.uniqued
                #expect(result == ["apple", "banana", "orange"])
            }

            @Test("Returns same array when all elements are unique")
            func allUnique() {
                let input = [1, 2, 3, 4, 5]
                let result = input.uniqued
                #expect(result == input)
            }

            @Test("Returns empty array when input is empty")
            func emptyArray() {
                let input: [Int] = []
                let result = input.uniqued
                #expect(result.isEmpty)
            }

            @Test("Removes repeated characters in order")
            func characterArray() {
                let input: [Character] = ["a", "b", "a", "c", "b"]
                let result = input.uniqued
                #expect(result == ["a", "b", "c"])
            }
        }
    }

    @Suite(".isNilOrEmpty")
    struct IsNilOrEmptyTests {
        
        @Test("Returns true for nil array")
        func nilArray() {
            let array: [Int]? = nil
            #expect(Array.isNilOrEmpty(array))
        }

        @Test("Returns true for empty array")
        func emptyArray() {
            let array: [String]? = []
            #expect(Array.isNilOrEmpty(array))
        }

        @Test("Returns false for non-empty array")
        func nonEmptyArray() {
            let array: [Int]? = [1, 2, 3]
            #expect(!Array.isNilOrEmpty(array))
        }

        @Test("Returns true for nil set")
        func nilSet() {
            let set: Set<String>? = nil
            #expect(Set.isNilOrEmpty(set))
        }

        @Test("Returns true for empty set")
        func emptySet() {
            let set: Set<String>? = []
            #expect(Set.isNilOrEmpty(set))
        }

        @Test("Returns false for non-empty set")
        func nonEmptySet() {
            let set: Set<String>? = ["A", "B"]
            #expect(!Set.isNilOrEmpty(set))
        }
    }
}
