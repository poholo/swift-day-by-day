
//
//  Person.swift
//  swift-day-by-day
//
//  Created by imooc on 16/1/19.
//  Copyright © 2016年 mjc. All rights reserved.
//

import Foundation

class Person: NSObject {
    let name: String
    
    lazy var printName: () -> () = {
        [weak self] in
        if let strongSelf = self {
            print("The name is \(strongSelf.name)")
        }
    }
    
    init(personName: String) {
        name = personName
    }
    
    deinit {
        print("Person deinit \(self.name)")
    }
    
}

