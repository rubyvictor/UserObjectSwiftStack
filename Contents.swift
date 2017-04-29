//: Playground - noun: a place where people can play

import UIKit

class Node {
    
    let value: User
    var next: Node?
    init(value: User) {
        self.value = value
    }
}

class Stack {
    
    var top: Node?
    
    func push(_ value: User) {
        let oldTop = top
        top = Node(value: value)
        
        top?.next = oldTop
    }
    
    func pop() -> User? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peak() -> User? {
        return top?.value
    }
    
    
}

struct User {
    let name: String
    let userName: String
}

let me = User(name: "Victor", userName: "@VictorLee")
let you = User(name: "Brian", userName: "@Brianvoong")

let usersStack = Stack()
usersStack.push(me)
usersStack.push(you)

let firstUserPop = usersStack.pop()
if let name = firstUserPop?.name, let username = firstUserPop?.userName {
    print(name, username)
}





