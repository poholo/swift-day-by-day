//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

/**
    Optional Chaining可以让我们摆脱很多不必要的判断和取值，但是要小心陷井，因为optional会提前返回返回nil，
    所以optional是所得的东西都是Ｏption的
*/

class Toy {
    let name: String
    init(name: String) {
        self.name = name
    }
}

/*
class Pet {
    let toy: Toy?
    init() {
    }
}

class Child {
    var pet: Pet?
    init() {
        
    }
}
*/
