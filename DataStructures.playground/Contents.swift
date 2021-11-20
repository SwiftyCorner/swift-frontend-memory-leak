import UIKit


public struct Stack<Element> {
    
    private var storage: [Element] = []
    
    public init() {}
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
}

var stack = Stack<Int>()
stack.push(3)
stack.push(5)

