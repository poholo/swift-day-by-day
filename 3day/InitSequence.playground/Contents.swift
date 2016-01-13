//: Playground - noun: a place where people can play

import Foundation

/**
    初始化顺序
    与oc不同，swift要要保证所有属性均需要被初始化，所以属性的调用顺序也很有讲究。

    “在某个类的子类中，初始化方法里语句的顺序并不是随意的，我们需要保证在当前子类实例的成员初始化完成后才能调用父类的初始化方法：”
*/
class Cat {
    var name: String
    init(){
        name = "cat1"
    }
}

class Tager: Cat {
    let power: Int
    override init(){
        power = 10
//        super.init()
//        name = "tager"
    }
}

let t: Tager = Tager()

print("\(t.name) \(t.power)")


//Designated Convenience Required
/**
    1.强化Designated地位
    2.非optional实例变量均须在init中付赋值初始化
    3.init中可以给let实例常量进行赋值
    4.swift中init只能被调用一次
    5.与Designated对应的convenience,
        a－convenience初始化都必须调用一个类的designated初始化完成配置
        b－convenience初始化方法不能被子类重写或者是子类通过super调用
*/

class classA {
    var num: Int
    required init(num: Int){
        self.num = num
    }
    convenience init(bigNum: Bool) {
        self.init(num: 1000)
    }
}

/**
 “初始化路径必须保证对象完全初始化，这可以通过调用本类型的 designated 初始化方法来得到保证；
 子类的 designated 初始化方法必须调用父类的 designated 方法，以保证父类也完成初始化。”
 
 摘录来自: 王巍 (onevcat). “Swifter - 100 个 Swift 必备 tips”。 iBooks.
 */
class classB: classA {
    var age: Int
    init(num: Int, age: Int) {
        self.age = age
        super.init(num: num)
    }
    required init(num: Int) {
        age = 0
        super.init(num: num)
    }
//    convenience init(bigNum: Bool) {
//        
//    }
    
}







