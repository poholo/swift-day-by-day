//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"





struct Person {
    let name: String
    let age: Int
}

let xiaoMing = Person(name: "XiaoMing", age: 16)
let r = reflect(xiaoMing)     // r 是 MirrorType

print("属性个数:\(r.count)")
print("属性名:\(r[0].0)，值:\(r[0].1.summary)")
print("属性名:\(r[1].0)，值:\(r[1].1.summary)")

dump(xiaoMing)
// 输出：
// ▿ testme.Person
//  - name: XiaoMing
//  - age: 16”