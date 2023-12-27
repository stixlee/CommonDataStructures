//
//  File.swift
//  
//
//  Created by Michael Lee on 12/27/23.
//

import Foundation

public class SimpleStack<Element> {
    
    private var backingStore: [Element]
    
    public var count: Int { return backingStore.count }
    
    public var top: Element? {
        guard backingStore.count > 0 else { return nil }
        return backingStore.last
    }
    
    public init(with array: [Element]) { backingStore = array }

    public convenience init() { self.init(with: [Element]() ) }
    
    public func push(_ item: Element) { backingStore.append(item) }
    
    public func pop() -> Element? {
        guard backingStore.count > 0 else { return nil }
        let item = backingStore.last
        backingStore.removeLast()
        return item
    }
    
    public func toArray() -> [Element] { return backingStore }
    
}
