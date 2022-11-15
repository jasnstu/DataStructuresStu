//
//  File.swift
//  
//
//  Created by Jason Stuemke on 11/14/22.
//

import Foundation

public struct LinkedList<Value> {

    var head: LinkedListNode<Value>?
    var tail: LinkedListNode<Value>?

    public var headValue: Value? {
        head?.value
    }

    public var tailValue: Value? {
        tail?.value
    }

    public var isEmpty: Bool {
        head == nil
    }

    public mutating func push(_ value: Value) {
        head = LinkedListNode(value: value, next: head)

        if tail == nil {
            tail = head
        }
    }

    public mutating func append(_ value: Value) {
        guard !isEmpty, let tail else {
            push(value)
            return
        }

        tail.next = LinkedListNode(value: value)
        self.tail = tail.next
    }

    func node(at index: Int) -> LinkedListNode<Value>? {
        var currentNode = head
        var currentIndex = 0

        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }

        return currentNode
    }

    @discardableResult
    mutating func insert(value: Value, after node: LinkedListNode<Value>) -> LinkedListNode<Value> {
        guard tail !== node else {
            append(value)

            return tail!
        }

        node.next = LinkedListNode(value: value, next: node.next)

        return node.next!
    }

    @discardableResult
    public mutating func insert(value: Value, after index: Int) -> Value? {
        if let nodeAtIndex = node(at: index) {
            let insertedNode = insert(value: value, after: nodeAtIndex)

            return insertedNode.value
        } else {
            append(value)

            return tail?.value
        }
    }

    @discardableResult
    public mutating func pop() -> Value? {
        defer {
            head = head?.next

            if isEmpty {
                tail = nil
            }
        }

        return head?.value
    }

    @discardableResult
    public mutating func removeLast() -> Value? {
        guard let head else {
            return nil
        }

        guard head.next != nil else {
            return pop()
        }

        var prev = head
        var current = head

        while let next = current.next {
            prev = current
            current = next
        }

        prev.next = nil
        tail = prev

        return current.value
    }

    @discardableResult
    mutating func remove(after node: LinkedListNode<Value>) -> Value? {
        defer {
            if node.next === tail {
                tail = node
            }

            node.next = node.next?.next
        }

        return node.next?.value
    }

    @discardableResult
    public mutating func remove(at index: Int) -> Value? {
        guard let nodeBeforeToBeRemoved = node(at: index - 1) else { return nil }

        return remove(after: nodeBeforeToBeRemoved)
    }

}
