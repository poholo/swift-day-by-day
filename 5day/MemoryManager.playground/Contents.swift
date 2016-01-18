//: Playground - noun: a place where people can play

import Foundation

/**
    内存管理
    ⚠️playground会持有所有声明，所以我们Xcode项目环境中运行
    swift是自动管理内存的，遵循了ARC自动引用计数
    但自动引用计数机制都有一个从理论上无法绕过的限制，那就是循环引用，retain cycle

*/



class A {
    let b: B
    init() {
        b = B()
        b.a = self
    }
    
    deinit {
        print("A deinit")
    }
}

class B {
    var a: A? = nil
    
    deinit {
        print("B deinit")
    }
}


A()
