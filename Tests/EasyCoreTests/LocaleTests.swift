import Testing
import Foundation

@testable import EasyCore

@Suite("Locale")
struct LocaleExtension {
    @Test
    func locales() {
        #expect(Locale.locales.count == 440)
    }
}
