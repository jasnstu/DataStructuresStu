
import XCTest

@testable import DataStructuresStu

final class LinkedListTests: XCTestCase {

    func test_defaultValues() {
        let sut = LinkedList<Int>()

        XCTAssertNil(sut.head)
        XCTAssertNil(sut.headValue)
        XCTAssertNil(sut.tail)
        XCTAssertNil(sut.tailValue)
        XCTAssertTrue(sut.isEmpty)
    }

    func test_push_emptyList() {
        let valueToPush = 1
        var sut = LinkedList<Int>()

        sut.push(valueToPush)

        XCTAssertFalse(sut.isEmpty)
        XCTAssertNotNil(sut.head)
        XCTAssertNotNil(sut.tail)
        XCTAssert(sut.head == sut.tail)
        XCTAssertEqual(sut.head?.value, valueToPush)
    }

    func test_push_putsAtFrontOfExistingList() {
        let valueToPush = 1
        var sut = LinkedList<Int>()
        sut.push(2)

        sut.push(valueToPush)

        XCTAssertFalse(sut.isEmpty)
        XCTAssertNotNil(sut.head)
        XCTAssertNotNil(sut.tail)
        XCTAssertNotEqual(sut.head, sut.tail)
        XCTAssertEqual(sut.head?.value, valueToPush)
    }

}
