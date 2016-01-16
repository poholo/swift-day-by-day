//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

/**
    swift 中有两个表示类型作用域的关键字，class & static
    swift中这俩是不能混用的
*/

struct Point {
    let x: Double
    let y: Double
    
    // store properties
    static let zero = Point(x: 0, y: 0)
    
    //count properties
    static var ones: [Point] {
        return [Point(x: 1, y: 1),
                Point(x: 2, y: 2),
                Point(x: 3, y: 3),
                Point(x: 4, y: 4),
                Point(x: 5, y: 5)]
    }
    
    //type func
    static func add(p1: Point, p2: Point) ->Point {
        return Point(x: p1.x + p2.x, y: p1.y + p2.y)
    }
    
}

//enum same like up

//class 中不得出现class

/* error
class Myclasss {
    class var bar: AnyObject?
}
*/

//swift 1.2 class中可以使用static来声明一个类作用域的变量。
class Myclass {
    static var bar: AnyObject?
}

//protocol 我们想在protocol里定义一个裂心域上的方法或者计算属性的话，应该用static来定义。

protocol MyProtocol {
    static func foo() -> String
}

struct MyStruct: MyProtocol {
    static func foo() -> String {
        return "MyStruct"
    }
}

print(MyStruct.foo())

enum MyEnum: MyProtocol {
    static func foo() -> String {
        return "MyEnum"
    }
}

print(MyEnum.foo())

class MyClass: MyProtocol {
    /*
    class func foo() -> String {    //class 中 static 用class表示  swift 1.2 before
        return "MyClass"
    }
*/
    static func foo() -> String {
        return "MyStaticClass"
    }
}

print(MyClass.foo())



