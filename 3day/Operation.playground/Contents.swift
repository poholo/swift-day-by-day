//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

/**
    “与 Objective-C 不同，Swift 支持重载操作符这样的特性，最常见的使用方式可能就是定义一些简便的计算了。比如我们需要一个表示二维向量的数据结构：”

    摘录来自: 王巍 (onevcat). “Swifter - 100 个 Swift 必备 tips”。 iBooks.
*/

/**
    运算符重载
 */
struct Vector2D {
    var x = 0.0
    var y = 0.0
}

let v1 = Vector2D(x: 1.0, y: 2.0)
let v2 = Vector2D(x: 3.0, y: 4.0)

let v3 = Vector2D(x: v1.x + v2.x, y: v1.y + v2.y)

func +(v1: Vector2D, v2: Vector2D) -> Vector2D {
    return Vector2D(x: v1.x + v2.x, y: v1.y + v2.y)
}

let v4  = v1 + v2

func *(left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x * right.x, y: left.y * right.y)
}

let v5 = v1 * v2

func /(left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x / right.x, y: left.y / right.y)
}

let v6 = v1 / v2

print(v6)

infix operator +* {
    associativity none
    precedence 160
}

func +*(left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x * (1 + right.x), y: left.y * (1 + right.y))
}

let v7 = v1 +* v2




