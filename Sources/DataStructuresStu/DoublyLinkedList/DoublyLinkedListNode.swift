
import Foundation

public class DoublyLinkedListNode<Value> {

    public var value: Value
    public var next: DoublyLinkedListNode<Value>?
    public var previous: DoublyLinkedListNode<Value>?

    public init(value: Value) {
        self.value = value
    }

}
