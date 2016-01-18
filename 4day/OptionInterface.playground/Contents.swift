//: Playground - noun: a place where people can play

import Foundation

/**
    可选接口
    原生的swift不带有可选实现协议，所以定义的方法必须实现
    如果要想oc那样需要这样实现,只能是class类型实现了，对于struct enum 就无能为力了
*/

@objc protocol OptionalProtocol {
    optional func optionalMethod()  //optional
    func addSome()                  //必选
}





class ProtocolOptionTestControl: OptionalProtocol {
    @objc func addSome() {   //必须objc开头哈
        
    }
}

/*  x
struct ProtocolOptionStructTest: OptionalProtocol {
    func addSome() {
        
    }
}
*/

/*
enum ProtocolOptionEnumTest: OptionalProtocol {
    @objc func addSome() {
        
    }
}
*/