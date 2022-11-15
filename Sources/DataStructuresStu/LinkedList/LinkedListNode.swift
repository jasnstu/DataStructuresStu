//
//  LinkedListNode.swift
//  
//
//  Created by Jason Stuemke on 11/14/22.
//

import Foundation

class LinkedListNode<Value> {
    var value: Value
    var next: LinkedListNode<Value>?

    init(value: Value, next: LinkedListNode<Value>? = nil) {
        self.value = value
        self.next = next
    }
}

extension LinkedListNode: Equatable where Value: Equatable {
    static func == (lhs: LinkedListNode<Value>, rhs: LinkedListNode<Value>) -> Bool {
        lhs.value == rhs.value && lhs.next == rhs.next
    }
}
