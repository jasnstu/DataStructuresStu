
import Foundation

public class DoublyLinkedListIterator<Value>: IteratorProtocol {

    private var current: DoublyLinkedListNode<Value>?

    public init(node: DoublyLinkedListNode<Value>?) {
        current = node
    }

    public func next() -> DoublyLinkedListNode<Value>? {
        defer { current = current?.next }

        return current
    }
}
