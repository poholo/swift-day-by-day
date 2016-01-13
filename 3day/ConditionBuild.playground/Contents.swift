//: Playground - noun: a place where people can play

import Foundation

// #if #elsif #endif #ifdef

// #if这套语法还是存在的，使用方法也和以前是一样的，没有多大差异
let condition: Bool = true
#if conditon
    print("conditon - \(condition)")
#else
    print("conditon - \(condition)")
#endif
