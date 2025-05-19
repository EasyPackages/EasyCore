actor Counter {
    private var count = 0
    func increment() { count += 1 }
    func value() -> Int { count }
}
