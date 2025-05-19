import Foundation
import Testing

@testable import EasyCore

@Suite("Encoder")
struct EncoderTests {
    private struct User: Encodable, Equatable {
        let name: String
        let age: Int
    }
    
    @Suite("Encodable extensions")
    struct EncodableTests {
        
        @Test("Encodes object to Data successfully")
        func encodeToData() {
            let user = User(name: "Letícia", age: 28)
            let data = user.encode()
            
            #expect(data != nil)
            
            let json = try? JSONSerialization.jsonObject(with: data!)
            #expect(json is [String: Any])
        }
        
        @Test("Encodes object to JSON string")
        func encodeToJSONString() {
            let user = User(name: "Letícia", age: 28)
            let json = user.encodeToString()
            
            #expect(json?.contains("\"name\"") == true)
            #expect(json?.contains("\"Letícia\"") == true)
        }
        
        @Test("Encodes object to pretty-printed JSON string")
        func encodeToPrettyPrintedJSONString() {
            let user = User(name: "Letícia", age: 28)
            let json = user.encodeToString(prettyPrinted: true)
            
            #expect(json?.contains("\n") == true)
            #expect(json?.contains("  ") == true)
        }
        
        @Test("Converts object to dictionary representation")
        func encodeToDictionary() {
            let user = User(name: "Letícia", age: 28)
            let dict = user.dictionary
            
            #expect(dict?["name"] as? String == "Letícia")
            #expect(dict?["age"] as? Int == 28)
        }
    }

    @Suite("JSONEncoder Presets")
    struct JSONEncoderPresetsTests {
        
        @Test("standard returns default configuration")
        func standardReturnsDefaults() {
            let encoder = JSONEncoder.standard

            #expect(String(describing: encoder.keyEncodingStrategy) == String(describing: JSONEncoder.KeyEncodingStrategy.useDefaultKeys))
            #expect(String(describing: encoder.dateEncodingStrategy) == String(describing: JSONEncoder.DateEncodingStrategy.deferredToDate))
        }

        @Test("snakeCase applies convertToSnakeCase")
        func snakeCaseApplied() {
            let encoder = JSONEncoder.snakeCase
            #expect(String(describing: encoder.keyEncodingStrategy) == String(describing: JSONEncoder.KeyEncodingStrategy.convertToSnakeCase))
        }

        @Test("iso8601 applies ISO8601 date encoding strategy")
        func iso8601Applied() {
            let encoder = JSONEncoder.iso8601
            #expect(String(describing: encoder.dateEncodingStrategy) == String(describing: JSONEncoder.DateEncodingStrategy.iso8601))
        }

        @Test("secondsSince1970 applies secondsSince1970 date encoding strategy")
        func secondsSince1970Applied() {
            let encoder = JSONEncoder.secondsSince1970
            #expect(String(describing: encoder.dateEncodingStrategy) == String(describing: JSONEncoder.DateEncodingStrategy.secondsSince1970))
        }

        @Test("formatted(using:) applies custom DateFormatter strategy")
        func formattedWithCustomDateFormatter() {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            let encoder = JSONEncoder.formatted(using: formatter)
            #expect(String(describing: encoder.dateEncodingStrategy).contains("formatted"))
        }

        @Test("Chaining snakeCase and formatted(using:) applies both strategies")
        func chainingModifiersWorks() {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"

            let encoder = JSONEncoder.standard
                .snakeCase
                .formatted(using: formatter)

            #expect(String(describing: encoder.keyEncodingStrategy) == String(describing: JSONEncoder.KeyEncodingStrategy.convertToSnakeCase))
            #expect(String(describing: encoder.dateEncodingStrategy).contains("formatted"))
        }
    }
}
