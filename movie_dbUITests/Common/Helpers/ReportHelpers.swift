import Foundation
import XCTest

enum Helper {
    static func XCTFailOnError(closure: () throws -> Void) {
        do {
            try closure()
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}

enum Report {
    static func step(_ description: String, closure: () throws -> Void) {
        XCTContext.runActivity(named: "Step: \(description)") { _ in
            Helper.XCTFailOnError {
                try closure()
            }
        }
    }
    
    static func test(_ testId: String, _ testName: String, closure: () throws -> Void) {
        XCTContext.runActivity(named: "\(testId): \(testName)") { _ in
            Helper.XCTFailOnError {
                try closure()
            }
        }
    }
}
