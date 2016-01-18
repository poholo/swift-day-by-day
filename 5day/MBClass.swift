//
//  MBClass.swift
//  swift-day-by-day
//
//  Created by imooc on 16/1/18.
//  Copyright © 2016年 mjc. All rights reserved.
//

import Foundation

class MBClass: NSObject{
    var a: MAClass? = nil
    
    deinit {
        print("B deinit")
    }
}