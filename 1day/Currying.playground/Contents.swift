//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"
/**
    定义:接受多个参数的方法转换成接受第一个参数的方法，并且返回接受余下的参数／返回结果的新方法
 
    柯里化（Currying），又称部分求值（Partial Evaluation），是一种函数式编程思想，就是把接受多个参数的函数转换成接收一个单一参数（最初函数的第一个参数）的函数，并且返回一个接受余下参数的新函数技术。
*/
func addTwoNumbers(a: Int)(num: Int) -> Int {
    return a + num
}

// 1. 第一个调用返回另一个方法
let addSameTowNumbers = addTwoNumbers(11)

// 2.给返回的方法传值，返回结果
let result = addSameTowNumbers(num: 12)

/**
    柯里化是一种量产相似方法的好办法
*/

// prictise

/*

protocol TargetActionWrapper<T: AnyObject>: TargetAction {
    weak var target: T?
    let action: (T) -> () -> ()
    func performAction() -> () {
        if let t = target {
            ation(t)()
        }
    }
}


enum  ControlEvent {
    case TouchUpInside
    case ValueChanged
}

class Control {
    var actions = [ControlEvent: TargetAction]()
    func setTarget<T: AnyObject>(target: T, action: (T) -> () ->(), ControlEvent: ControlEvent) {
        target: target, action: action)
    }
}
*/

func addCur(a: Int)(b: Int)(c: Int) -> Int {
    print("a = \(a) b = \(b) c = \(c)")
    return a + b + c
}

let addWithA = addCur(10)
let addWithB = addWithA(b: 11)
let addCurResult   = addWithB(c: 12)

print("1:funcA type: \(addWithA.dynamicType)")
print("3:funcC type: \(addCurResult.dynamicType)")
print("2:funcB type: \(addWithB.dynamicType)")

//swift Curring基础有两个，函数是一级公民 － 闭包




//http://www.jianshu.com/p/6eaacadafa1a
class Currying
{
    /*** uncurried:普通函数 ***/
     // 接收多个参数的函数
    func add(a: Int, b: Int, c: Int) -> Int{
        print("\(a) + \(b) + \(c)")
        return a + b + c
    }
    
    /*** 手动实现柯里化函数 ***/
     // 把上面的函数转换为柯里化函数，首先转成接收第一个参数a，并且返回接收余下第一个参数b的新函数（采用闭包）
     // 为了让大家都能看懂,我帮你们拆解来看下
     // (a: Int) : 参数
     // (b:Int) -> (c: Int) -> Int : 函数返回值（一个接收参数b的函数,并且这个函数又返回一个接收参数c,返回值为Int类型的函数)
     
     // 定义一个接收参数a,并且返回一个接收参数b的函数,并且这个函数又返回一个接收参数c,返回值为Int类型的函数
    func add(a: Int) -> (b:Int) -> (c: Int) -> Int{
        
        // 一个接收参数b的函数,并且这个函数又返回一个接收参数c,返回值为Int类型的函数
        return { (b:Int) -> (c: Int) -> Int in
            
            // 返回一个接收余下第一个参数c，并且有返回结果为Int类型的函数
            return { (c: Int) -> Int in
                
                return a + b + c;
                /*
                注解： 这里为什么能使用参数a,b,c?
                利用闭包的值捕获特性，即使这些值作用域不在了，也可以捕获到他们的值。
                闭包会自动判断捕获的值是值拷贝还是值引用，如果修改了，就是值引用，否则值拷贝。
                
                注意只有在闭包中才可以，a,b,c都在闭包中。
                */
                
            }
            
        }
        
    }
    
    
    /*** curried: 系统自带的柯里化函数 ***/
    func addCur(a: Int)(b: Int)(c: Int) -> Int{
        print("\(a) + \(b) + \(c)")
        return a + b + c
    }
    
    
}

//为什么要柯里化？
print("为什么要柯里化")
func concat(characters: Array<String>) {
    var resutlStr = ""
    for character in characters {
        resutlStr += character
    }
    print(resutlStr)
}

concat(["1", "2", "3"])

//add num then concat
func numberAdd1ThenConcat(characters: Array<String>, addNum: Int) {
    var resultStr = ""
    for character in characters {
        let tmp = Int(character)! + addNum
        resultStr += "\(tmp) "
    }
    print("numberAdd1ThenConcat : \(resultStr)")
}

numberAdd1ThenConcat(["9", "7", "5", "3"], addNum: 10)

//multiplynum then concat
func numberMultiplyThenConcat(characters: Array<String>, multiplyNumber: Int) {
    var resultStr = ""
    for character in characters {
        let tmp = Int(character)! * multiplyNumber
        resultStr += "\(tmp) "
    }
    print(resultStr)
}

numberMultiplyThenConcat(["15", "100", "9999"], multiplyNumber: 10)

/*****let's hug curring! *****/
func add(a: Int)(b: Int) -> Int {
    return a + b
}

func multily(a: Int)(b: Int) ->Int {
    return a * b
}

func concatByCurring(characters: Array<String>)(caculateFunc: (Int) -> (Int)) -> String {
    var resultStr = ""
    for character in characters {
        let num = Int(character)!
        let newNum = caculateFunc(num)
        let newChar = String(newNum)+" "
        resultStr += newChar
    }
    return resultStr
}

let strFunc = concatByCurring(["1", "2", "3", "4"])
let resultAddNumber = strFunc(caculateFunc: add(4))
let resultMultilyNumber = strFunc(caculateFunc: multily(10))

//Curring 处理Selector
class People : NSObject {
    func speak(){
        print("hello")
    }
    
    func printSpeak(){
        print("\(People.speak.dynamicType)")
    }
}

People().printSpeak()

protocol TargetAction {
    func performAction()
}

struct TargetActionWrapper<T: AnyObject> : TargetAction {
    weak var target: T?
    let action: (T) -> () -> ()
    func performAction() -> (){
        if let t = target {
            //curring
            action(t)()
        }
    }
}

enum ControlEvent {
    case TouchUpInside
    case ValueChange
}

class Control {
    var actions = [ControlEvent: TargetAction]()
    
    func setTarget<T: AnyObject>(target: T, action: (T) -> () -> (), controlEvent: ControlEvent) {
        // 赋值action 和 target 后面用于performAction()        actions[controlEvent] = TargetActionWrapper(target: target, action: action)
    }
    
    func removeTargetForControlEvent(controlEvent: ControlEvent) {
        actions[controlEvent] = nil
    }
    
    func performActionForControlEvent(controlEvent: ControlEvent) {
        actions[controlEvent]?.performAction()
    }
}

class MyViewController {
    let button = Control()
    
    func viewDidLoad() {
        // 此时的action 就能用 onButtonTap 函数赋值了
        button.setTarget(self, action: MyViewController.onButtonTap, controlEvent: .TouchUpInside)
    }
    
    func onButtonTap() {
        print("Button was tapped")
    }
}

// 调用
MyViewController().onButtonTap()








