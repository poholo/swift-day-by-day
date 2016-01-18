//: Playground - noun: a place where people can play

import Foundation

/**
    多类型容器
    swift中原生的容器只有两个，Array 和  Dictionary
*/


/*
struct Array<T> {
    //...
}

struct Dictionary<key: Hashable, Value> {
    //.....
}

他们都是泛型的，所以一个集合中只能放同一种类型的元素
*/


let numbers = [1, 2, 3, 4.0]
print(numbers)

let tmp = [1, "abc", "a", 2]
print(tmp)

print(tmp[1].dynamicType)

//let tmp: NSArray<Int> = [1, 2, "3", 4]

