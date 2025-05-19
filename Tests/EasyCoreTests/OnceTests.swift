import Foundation
import Testing

@testable import EasyCore

@Suite("Once")
struct OnceTests {
    
    @Test("Runs the block on first call")
    func runsOnce() {
        var counter = 0
        let once = Once()
        
        once.run {
            counter += 1
        }
        
        #expect(counter == 1)
    }
    
    @Test("Does not run the block on subsequent calls")
    func doesNotRunAgain() {
        var counter = 0
        let once = Once()
        
        once.run { counter += 1 }
        once.run { counter += 1 }
        once.run { counter += 1 }
        
        #expect(counter == 1)
    }
    
    @Test("Thread-safe: only runs block once even when called concurrently")
    func threadSafeRunOnce() async throws {
        let once = Once()
        let counter = Counter()
        
        await withTaskGroup(of: Void.self) { group in
            for _ in 0..<100 {
                group.addTask {
                    once.run {
                        Task { await counter.increment() }
                    }
                }
            }
        }
        
        try await Task.sleep(nanoseconds: 200_000_000)
        #expect(await counter.value() == 1)
    }
}
