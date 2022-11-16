
import Foundation

public struct Stack<Element> {

    private var insides: [Element] = []

    public var isEmpty: Bool {
        insides.isEmpty
    }

    public init(insides: [Element]) {
        self.insides = insides
    }

    public mutating func push(_ element: Element) {
        insides.append(element)
    }

    public func peek() -> Element? {
        insides.last
    }

    public mutating func pop() -> Element? {
        insides.popLast()
    }

}
