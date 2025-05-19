import Foundation
import Testing

@testable import EasyCore

@Suite("Throttler")
struct ThrottlerTests {

    @Test("Executes the block on first call")
    func executesFirstCall() async throws {
        let throttler = Throttler(delay: 0.3)
        let tracker = Counter()

        throttler.call {
            Task { await tracker.increment() }
        }

        try await Task.sleep(nanoseconds: 100_000_000) // wait 0.1s
        #expect(await tracker.value() == 1)
    }

    @Test("Ignores calls made within the throttle window")
    func ignoresRapidCalls() async throws {
        let throttler = Throttler(delay: 0.3)
        let tracker = Counter()

        throttler.call {
            Task { await tracker.increment() }
        }

        throttler.call {
            Task { await tracker.increment() }
        }

        try await Task.sleep(nanoseconds: 400_000_000) // wait 0.4s
        #expect(await tracker.value() == 1)
    }

    @Test("Allows a second call after the delay has passed")
    func allowsCallAfterDelay() async throws {
        let throttler = Throttler(delay: 0.2)
        let tracker = Counter()

        throttler.call {
            Task { await tracker.increment() }
        }

        try await Task.sleep(nanoseconds: 300_000_000) // wait 0.3s

        throttler.call {
            Task { await tracker.increment() }
        }

        try await Task.sleep(nanoseconds: 200_000_000) // wait 0.2s
        #expect(await tracker.value() == 2)
    }

    @Test("Only first call executes when many calls are made quickly")
    func onlyFirstCallDuringBurst() async throws {
        let throttler = Throttler(delay: 0.5)
        let tracker = Counter()

        for _ in 0..<10 {
            throttler.call {
                Task { await tracker.increment() }
            }
            try await Task.sleep(nanoseconds: 50_000_000) // 0.05s
        }

        try await Task.sleep(nanoseconds: 6_000_000_000) // wait after burst
        #expect(await tracker.value() == 1)
    }
}
