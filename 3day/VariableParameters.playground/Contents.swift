//: Playground - noun: a place where people can play

import Foundation

/**
    可变参数函数
    可变参数只能作为方法的最后一个参数使用
    一个比较恼人的事可变参数必须是一种类型，如果我们想传入多种类型的还得变通一下
*/
func sum(input: Int...) -> Int {
    return input.reduce(0, combine: +)
}

sum(1, 2, 3, 4, 5, 60)


func some(name: String, _ varies: CVarArgType...) {
    print(varies)
}

let a: NSNumber = 1
some("mjc", "1", "m", 1, a)
