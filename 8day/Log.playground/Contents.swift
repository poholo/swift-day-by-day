//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//新版的LLDB貌似遇到 #ifDEBUG 直接将这个方法取掉
func printLg<T>(message: T, file: String = __FILE__, method: String = __FUNCTION__, line: Int = __LINE__) {
//    #if DEBUG
    print("method=\(method)-line:\(line)-message=\(message)")
//    #endif
}

printLg("hh")

func sayHello() {
    let a = sin(10.0)
    printLg("hello \(a)")
}

sayHello()

let arr = [0, 4, 10]

let arr1 = arr.map {
    $0 * 10
}

printLg(arr1)


class MyClass {

}


//给extension设置属性
private var key: Void

extension MyClass {
    var title: String? {
        get {
            return objc_getAssociatedObject(self, &key) as? String
        }
        set {
            objc_setAssociatedObject(self, &key, newValue, UInt(OBJC_ASSOCIATION_RETAIN_NONATOMIC))
        }
    }
}

