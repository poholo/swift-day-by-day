//
//  MAClass.swift
//  swift-day-by-day
//
//  Created by imooc on 16/1/18.
//  Copyright © 2016年 mjc. All rights reserved.
//

import Foundation

class MAClass: NSObject{
    var b: MBClass
    override init() {
        b = MBClass()
        super.init()
        b.a = self
    }
    
    
    deinit {
        print("a deinit")
    }
}