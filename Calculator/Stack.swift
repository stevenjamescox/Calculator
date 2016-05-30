//
//  Stack.swift
//  Calculator
//
//  Created by Steve Cox on 5/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Stack {
    
    private var stack = [Float]()
    
    
    func pop() -> Float? {
        return stack.removeLast()
    }
    
    
    func push(number: Float) {
        stack.append(number)
    }
    
    
    func log() {
        print(stack)
    }
    
    
    func count() -> Int {
        return stack.count
    }
    
}