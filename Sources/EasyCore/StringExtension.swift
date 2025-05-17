public extension String {
    func removeOcurrencing(_ value: String) -> String {
        replacingOccurrences(of: value, with: String())
    }
}
