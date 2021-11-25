import UIKit

// Stacks -----------------

public struct Stack<Element> {
    
    private var storage: [Element] = []
    
    public init() {}
    
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    public mutating func pop() -> Element? {
        return storage.popLast()
    }
    
}

var stack = Stack<Int>()
stack.push(3)
stack.push(5)

// Linked Lists -----------------
// collection of values arranged in a linear, unidirectional sequence
// "chain of nodes"

public class Node<Value> {
    public var value: Value
    public var next: Node?
    
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

node1.next = node2
node2.next = node3
