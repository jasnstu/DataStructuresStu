
import Foundation

// MARK: DoublyLinkedList

public class DoublyLinkedList<Value> {

    private var head: DoublyLinkedListNode<Value>?
    private var tail: DoublyLinkedListNode<Value>?

    public var isEmpty: Bool {
        head == nil
    }

    public var first: DoublyLinkedListNode<Value>? {
        head
    }

    public init() { }

    public func append(_ value: Value) {
        let newNode = DoublyLinkedListNode(value: value)

        guard let tailNode = tail else {
            head = newNode
            tail = newNode
            return
        }

        newNode.previous = tailNode
        tailNode.next = newNode
        tail = newNode
    }

    public func remove(_ node: DoublyLinkedListNode<Value>) -> Value {
        let prev = node.previous
        let next = node.next

        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }

        next?.previous = prev

        if next == nil {
            tail = prev
        }

        node.previous = nil
        node.next = nil

        return node.value
    }

}
