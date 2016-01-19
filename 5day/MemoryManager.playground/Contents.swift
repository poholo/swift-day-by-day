//: Playground - noun: a place where people can play

import Foundation

/**
    内存管理
    ⚠️playground会持有所有声明，所以我们Xcode项目环境中运行
    swift是自动管理内存的，遵循了ARC自动引用计数
    但自动引用计数机制都有一个从理论上无法绕过的限制，那就是循环引用，retain cycle\
 
    weak / unowned like unsafe_unretained
    
    unsafe_unretained 原来的对象释放了，他还保持着原对象的无效引用。他不是optional 也 不能为nil 如果尝试访问这个属性，程序崩溃
    而weak友好一点，当持有对象释放后，weak对象指向也自动置为nil
    
    @weak的变量一定需要option值
    关于两者的选择，苹果建议
    1.访问时能确定不会被已释放，用unowned
    2.如果有释放的可能用weak
 
    weak日常的使用场景
    1.设置delegate
    2.当self属性存储为闭包时，其中拥有对self的引用时
 
    闭包和闭包的循环引用

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


class Person {
    let name: String
    lazy var printName: () -> () = {
        print("The name is \(self.name)")
    }
    
    init (personName: String){
        name = personName
    }
    
    deinit {
        print("person deinit")
    }
}

let p = Person(personName: "Hello")

p.printName()
print(p.printName.dynamicType)



