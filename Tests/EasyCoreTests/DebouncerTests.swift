import Foundation
import Testing

@testable import EasyCore

@Suite("Debouncer")
struct DebouncerTests {

    @Test("Executes block after delay")
    func executesAfterDelay() async throws {
        let debouncer = Debouncer(delay: 0.2)
        var didRun = false

        debouncer.call {
            didRun = true
        }

        try await Task.sleep(nanoseconds: 300_000_000) // 0.3s
        #expect(didRun)
    }

    @Test("Cancels previous block if called again before delay")
    func cancelsPreviousBlock() async throws {
        let debouncer = Debouncer(delay: 0.3)
        var counter = 0

        debouncer.call {
            counter += 1
        }

        try await Task.sleep(nanoseconds: 100_000_000) // 0.1s

        debouncer.call {
            counter += 1
        }

        try await Task.sleep(nanoseconds: 400_000_000) // 0.4s
        #expect(counter == 1)
    }

    @Test("Only last call executes when called multiple times rapidly")
    func onlyLastCallExecutes() async throws {
        let debouncer = Debouncer(delay: 0.2)
        var values: [Int] = []

        for i in 1...5 {
            debouncer.call {
                values.append(i)
            }
            try await Task.sleep(nanoseconds: 50_000_000) // 0.05s
        }

        try await Task.sleep(nanoseconds: 300_000_000) // wait for final call
        #expect(values == [5])
    }

    @Test("Does not execute if delay has not elapsed")
    func doesNotRunTooSoon() async throws {
        let debouncer = Debouncer(delay: 0.5)
        var didRun = false

        debouncer.call {
            didRun = true
        }

        try await Task.sleep(nanoseconds: 200_000_000) // 0.2s
        #expect(didRun == false)
    }
}
