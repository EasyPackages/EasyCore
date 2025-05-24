import Testing
import Foundation

@testable import EasyCore

@Suite("Decoder")
struct DecoderTests {
    private struct User: Decodable, Equatable {
        let name: String
        let age: Int
    }

    @Suite("Data.decode(_:decoder:)")
    struct DataDecodeTests {
        
        @Test("Decodes valid JSON into expected model")
        func validDecoding() {
            let json = """
            {
                "name": "Letícia",
                "age": 28
            }
            """
            let data = Data(json.utf8)
            let user = data.decode(User.self)
            
            #expect(user == User(name: "Letícia", age: 28))
        }

        @Test("Returns nil when decoding invalid JSON")
        func invalidJSON() {
            let json = """
            {
                "name": "Letícia"
                "age": 28
            }
            """ // missing comma
            let data = Data(json.utf8)
            let user = data.decode(User.self)
            
            #expect(user == nil)
        }

        @Test("Returns nil when structure doesn't match expected model")
        func mismatchedStructure() {
            let json = """
            {
                "username": "Letícia",
                "yearsOld": 28
            }
            """
            let data = Data(json.utf8)
            let user = data.decode(User.self)
            
            #expect(user == nil)
        }

        @Test("Supports decoding with custom decoder")
        func customDecoder() {
            struct DateModel: Decodable, Equatable {
                let createdAt: Date
            }

            let json = #"{"createdAt": "2023-10-15T12:00:00Z"}"#
            let data = Data(json.utf8)
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            
            let result = data.decode(DateModel.self, decoder: decoder)
            #expect(result?.createdAt == ISO8601DateFormatter().date(from: "2023-10-15T12:00:00Z"))
        }
    }
    
    @Suite("String.decode(_:decoder:)")
    struct StringDecodeTests {
        
        @Test("Decodes a valid JSON string into a model")
        func validJSONString() {
            let json = """
            {
                "name": "Letícia",
                "age": 28
            }
            """
            let result = json.decode(User.self)
            #expect(result == User(name: "Letícia", age: 28))
        }

        @Test("Returns nil when string is not valid JSON")
        func invalidJSONString() {
            let json = """
            {
                "name": "Letícia"
                "age": 28
            }
            """ // Missing comma
            let result = json.decode(User.self)
            #expect(result == nil)
        }

        @Test("Returns nil when JSON structure does not match model")
        func mismatchedStructure() {
            let json = """
            {
                "username": "Letícia",
                "years": 28
            }
            """
            let result = json.decode(User.self)
            #expect(result == nil)
        }

        @Test("Returns nil when string is not UTF-8 encodable")
        func invalidEncoding() {
            let string = "👩‍💻".applyingTransform(.toLatin, reverse: false) ?? "" // creates a non-UTF-8 safe string
            let result = string.decode(User.self)
            #expect(result == nil)
        }

        @Test("Decodes with custom decoder strategy")
        func customDateDecoder() {
            struct Event: Decodable, Equatable {
                let date: Date
            }

            let json = #"{"date":"2023-05-01T14:30:00Z"}"#
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601

            let result = json.decode(Event.self, decoder: decoder)
            let expected = ISO8601DateFormatter().date(from: "2023-05-01T14:30:00Z")
            #expect(result?.date == expected)
        }
    }

    @Suite("JSONDecoder Presets")
    @MainActor
    struct JSONDecoderPresetsTests {
        
        @Test("standard returns a fresh decoder instance")
        func standardIsDefault() {
            let decoder = JSONDecoder.standard
            #expect(String(describing: decoder.keyDecodingStrategy) == String(describing: JSONDecoder.KeyDecodingStrategy.useDefaultKeys))
            #expect(String(describing: decoder.dateDecodingStrategy) == String(describing: JSONDecoder.DateDecodingStrategy.deferredToDate))
        }

        @Test("snakeCase applies convertFromSnakeCase strategy")
        func snakeCaseDecoder() {
            let decoder = JSONDecoder.snakeCase
            
            #expect(String(describing: decoder.keyDecodingStrategy) == String(describing: JSONDecoder.KeyDecodingStrategy.convertFromSnakeCase))
        }

        @Test("iso8601 applies ISO8601 date decoding strategy")
        func iso8601Decoder() {
            let decoder = JSONDecoder.iso8601
            
            #expect(String(describing: decoder.dateDecodingStrategy) == String(describing: JSONDecoder.DateDecodingStrategy.iso8601))
        }

        @Test("secondsSince1970 applies secondsSince1970 date decoding strategy")
        func secondsSince1970Decoder() {
            let decoder = JSONDecoder.secondsSince1970
            #expect(String(describing: decoder.dateDecodingStrategy) == String(describing: JSONDecoder.DateDecodingStrategy.secondsSince1970))
        }

        @Test("formatted(using:) applies custom date formatter")
        func formattedUsingCustomFormatter() {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            
            let decoder = JSONDecoder.formatted(using: formatter)
            #expect(String(describing: decoder.dateDecodingStrategy) == String(describing: JSONDecoder.DateDecodingStrategy.formatted(formatter)))
        }

        @Test("Chained modifiers preserve strategy")
        func chainingModifiersWorks() {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"

            let decoder = JSONDecoder.standard
                .snakeCase
                .formatted(using: formatter)

            
            #expect(String(describing: decoder.dateDecodingStrategy) == String(describing: JSONDecoder.DateDecodingStrategy.formatted(formatter)))
        }
    }
}
