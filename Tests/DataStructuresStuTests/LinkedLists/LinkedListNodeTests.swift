
import XCTest

@testable import DataStructuresStu

final class LinkedListNodeTests: XCTestCase {

    func test_initialValues_defaults() {
        let testValue: Int = 1
        let sut = LinkedListNode<Int>(value: testValue)

        XCTAssertEqual(sut.value, testValue)
        XCTAssertNil(sut.next)
    }

    func test_initialValues_providedValues() {
        let testValue: Int = 1
        let testValue2: Int = 2
        let next = LinkedListNode<Int>(value: testValue2)
        let sut = LinkedListNode<Int>(value: testValue, next: next)

        XCTAssertEqual(sut.value, testValue)
        XCTAssertEqual(sut.next?.value, next.value)
    }

}
