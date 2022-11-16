
import Foundation

struct Stack<Element> {

    private var insides: [Element] = []

    var isEmpty: Bool {
        insides.isEmpty
    }

    init(insides: [Element]) {
        self.insides = insides
    }

    mutating func push(_ element: Element) {
        insides.append(element)
    }

    func peek() -> Element? {
        insides.last
    }

    mutating func pop() -> Element? {
        insides.popLast()
    }

}
