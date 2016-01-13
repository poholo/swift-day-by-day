//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"
/**
    Any & AnyObject 是swift的两妥协产物
    1. AnyObject 可以代表任何class类型
    2. Any 可以代表任意类型，甚至包括func类型

    “AnyObject 的所有方法调用都会返回 Optional 的结果”
    “应该选择的做法是在使用时先确定 AnyObject 真正的类型并进行转换以后再进行调用”

*/

func doSomething() -> AnyObject? {
    return "abc"
}

let a = doSomething()
print(a)


/*
    “在 Swift 中所有的基本类型，包括 Array 和 Dictionary 这些传统意义上会是 class 的东西，统统都是 struct 类型，并不能由 AnyObject来表示，于是 Apple 提出了一个更为特殊的 Any，除了 class 以外，它还可以表示包括 struct 和 enum 在内的所有类型”
*/

let b: Int = 2
print(b.dynamicType)
let c: AnyObject = b  //这儿隐士转换成NSCFNumber类型
print(c.dynamicType)
let d: Any = b
print(d.dynamicType)

/*
    “只使用 Swift 类型而不转为 Cocoa 类型，对性能的提升是有所帮助的”
*/


//###random numbers

let diceFaceCount: UInt32  = 100
//let randomRoll = Int(arc4random()) % diceFaceCount + 1 x
let randomRoll = Int(arc4random_uniform(diceFaceCount)) + 1
print(randomRoll)


//最佳实践
func randomInrange(range: Range<Int>) -> Int {
    let count = UInt32(range.endIndex - range.startIndex)
    return Int(arc4random_uniform(count))
}

let r = randomInrange(1...10)






