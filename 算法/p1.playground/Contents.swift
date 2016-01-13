//: Playground - noun: a place where people can play

import Foundation

var numbers: Array<Int> = [10, 9, 1, 2, 6, 5, 3, 0]

var sortNubmers: Array<Int>
//冒泡
var sum: Int =  numbers.count
for(var i: Int = 0; i < sum; i++) {
    
    print("----第\(i + 1)趟----")
    
    for(var j: Int = i + 1; j < sum; j++) {
        if(numbers[i] > numbers[j]){
            let tmp: Int = numbers[i]
            numbers[i] = numbers[j]
            numbers[j] = tmp
        }
    }
    print(numbers)
    print("---------------")
}
