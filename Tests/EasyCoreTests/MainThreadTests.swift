import Foundation
import Testing

@testable import EasyCore

@Suite("MainThread")
struct MainThreadTests {
    private actor Flag {
        private(set) var value = false
        func setTrue() { value = true }
        func get() -> Bool { value }
    }

    @Test("asyncSafe executes immediately when already on main thread")
    func asyncSafeOnMainThread() async throws {
        let flag = Flag()

        MainThread.asyncSafe {
            Task { await flag.setTrue() }
        }

        try await Task.sleep(nanoseconds: 300_000_000) // 0.3s
        #expect(await flag.get())
    }

    @Test("asyncSafe executes on main thread when called from background thread")
    func asyncSafeFromBackground() async throws {
        let flag = Flag()

        try await withCheckedThrowingContinuation { continuation in
            DispatchQueue.global().async {
                MainThread.asyncSafe {
                    guard Thread.isMainThread else { return }
                    Task { await flag.setTrue() }

                    // resume needs to run on main thread to avoid thread race
                    DispatchQueue.main.async {
                        continuation.resume()
                    }
                }
            }
        }

        #expect(await flag.get())
    }
    
    @Test("asyncSafe executes in main thread when on main thread")
    func asyncSafeFromMain() async throws {
        let flag = Flag()

        try await withCheckedThrowingContinuation { continuation in
            DispatchQueue.main.async {
                MainThread.asyncSafe {
                    guard Thread.isMainThread else { return }
                    Task { await flag.setTrue() }

                    // resume needs to run on main thread to avoid thread race
                    DispatchQueue.main.async {
                        continuation.resume()
                    }
                }
            }
        }

        #expect(await flag.get())
    }

    @Test("asyncAfter executes block after specified delay")
    func asyncAfterExecutes() async throws {
        let flag = Flag()

        MainThread.asyncAfter(seconds: 0.2) {
            Task { await flag.setTrue() }
        }

        try await Task.sleep(nanoseconds: 300_000_000) // 0.3s
        #expect(await flag.get())
    }

    @Test("asyncAfter runs block on main thread")
    func asyncAfterRunsOnMainThread() async throws {
        let flag = Flag()

        MainThread.asyncAfter(seconds: 0.1) {
            guard Thread.isMainThread else { return }
            Task { await flag.setTrue() }
        }

        try await Task.sleep(nanoseconds: 200_000_000)
        #expect(await flag.get())
    }
}
