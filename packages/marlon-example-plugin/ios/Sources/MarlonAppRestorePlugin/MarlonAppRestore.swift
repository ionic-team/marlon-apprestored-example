import Foundation

@objc public class MarlonAppRestore: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
