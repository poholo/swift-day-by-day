
//
//  AutoreleasePoolTest.swift
//  swift-day-by-day
//
//  Created by imooc on 16/1/19.
//  Copyright © 2016年 mjc. All rights reserved.
//

import Foundation
/*
    “Swift 在内存管理上使用的是自动引用计数 (ARC) 的一套方法，在 ARC 中虽然不需要手动地调用像是 retain，release 或者是 autorelease 这样的方法来管理引用计数，但是这些方法还是都会被调用的 – 只不过是编译器在编译时在合适的地方帮我们加入了而已。其中 retain 和 release 都很直接，就是将对象的引用计数加一或者减一。但是autorelease 就比较特殊一些，它会将接受该消息的对象放到一个预先建立的自动释放池 (auto release pool) 中，并在 自动释放池收到 drain 消息时将这些对象的引用计数减一，然后将它们从池子中移除 (这一过程形象地称为“抽干池子”)。”

    func autoreleasepool(code: () -> ()) 
*/


/*
    swift对类型要求非常严格，所以获取json之后想从结果AnyObject中获取某个键值是一件非常麻烦的事情。
*/

/*

let jsonString =  "{\"menu\": {\"id\": \"file\",\"value\": \"File\",\"popup\": {\"menuitem\": [{\"value\":\"New\", \"onclick\": \"CreateNewDoc()\"},{\"value\": \"Open\", \"onclick\": \"OpenDoc()\"},{\"value\": \"Close\", \"onclick\": \"CloseDoc()\"}]}}}"

let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(jsonString.dataUsingEncoding(NSUTF8StringEncoding,allowLossyConversion: true)!, options: nil, error: nil)


if let jsonDic = json as? NSDictionary {
    if let menu = jsonDic[\"menu\"] as? [String: AnyObject] {
        if let popup: AnyObject = menu[\"popup\"] {
            if let popupDic = popup as? [String: AnyObject] {
                if let menuItems: AnyObject = popupDic[\"menuitem\"] {
                    if let menuItemsArr = menuItems as? [AnyObject] {
                        if let item0 = menuItemsArr[0]
                            as? [String: AnyObject] {
                                if let value: AnyObject = item0[\"value\"] {
                                    println(value)
                                }
                        }
                    }
                }
            }
        }
    }
}

*/


// NSNull

/**
    出现最多的场合就是JSON解析了

*/


/*
let jsonValue: AnyObject = NSNull()
if let str = jsonValue as? String {
    print(str)
}
else {
    print("不能解析")
}
*/

