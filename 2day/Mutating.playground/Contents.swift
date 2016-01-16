//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//swift的protocol不仅可以被class类型实现，也适用于struct和enum。 mutating 修饰方法是为了能在该方法中修改stuct活着enum的变量
protocol Vehicle {
    mutating func changeColor()
}

struct MyCar: Vehicle{
    var color: Int
    init() {
        color = 0
    }
    mutating func changeColor() {
        self.color = 3
    }
}

var car = MyCar()

print(car.color)
car.changeColor()
print(car.color)

//Tuple

func swapMe<T>(inout a: T, inout b: T) {
    (a, b) = (b, a)
}

var a = 10
var b = 99

swapMe(&a, b: &b)

print("a= \(a), b = \(b)")

// handle error 
func checkOut() -> (Bool, NSError?) {
    let success = false
    if success {
        return (true, nil)
    }
    else {
        return (false, NSError(domain: "error 404", code: 404, userInfo: nil))
    }
}

let result =  checkOut()
print(result)

let (res, error) = checkOut()

print("\(res)  \(error!.domain)")


/**
    @autoclosure & ??
    “@autoclosure 做的事情就是把一句表达式自动地封装成一个闭包 (closure)
    摘录来自: 王巍 (onevcat). “Swifter - 100 个 Swift 必备 tips”。 iBooks.
*/

func logIfTrue(predicate: () -> Bool) {
    if predicate() {
        print("true")
    }
    else {
        print("false")
    }
}

logIfTrue { () -> Bool in
    return true
}

func closure() -> Bool {
    return false
}

print("\(closure.dynamicType)")
print("\(logIfTrue.dynamicType)")



logIfTrue({closure()})
logIfTrue{14>2}

//@autoclosure

func logIfTrueAutoClosure(@autoclosure predicate: () -> Bool) {
    if predicate() {
        print("true")
    }
    else {
        print("false")
    }
}

logIfTrueAutoClosure(2>1)


/**
    left is not options nil, return left's value ,else return right
*/
var level : Int?
var startLevel : Int? = 10

var currentLevel = level ?? startLevel





