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
    printLg("hello")
}

sayHello()
