//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func sayHello(str1: String = "hello", str2: String, str3: String) -> String {
    return str1 + str2 + str3
}

let res = sayHello(str2: "bbb", str3: "cccc")

print(res)


func sayHello1(str1: String, str2: String = "22222", str3: String = "abcdef") -> String {
    return str1 + str2 + str3
}

let res2 = sayHello1("aaaa", str2: "2", str3: "ccccccc")

let res3 = sayHello1("a", str2: "b")

let res4 = sayHello1("0")

let res5 = sayHello1("b", str3: "c")



