import XCTest
@testable import Angle

class AngleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Angle().text, "Hello, World!")
    }


    static var allTests : [(String, (AngleTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
