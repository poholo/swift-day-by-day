//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

//oc transe
class MyManager {
    class var sharedInstance : MyManager? {
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var staticInstance : MyManager?
        }
        dispatch_once(&Static.onceToken) {
            Static.staticInstance = MyManager()
        }
        return Static.staticInstance
    }
}
let m = MyManager.sharedInstance


//simple 
class Manager {
    class var shareInstance : Manager {
        struct Static {
            static let shareInstance : Manager = Manager()
        }
        return Static.shareInstance
    }
}

//private method 3
class Manager3 {
    class var sharedManager : Manager3 {
        return sharedInstance
    }
}

private let sharedInstance = Manager3()


Manager3.sharedManager




