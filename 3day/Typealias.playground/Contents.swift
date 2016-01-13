//: Playground - noun: a place where people can play

import Foundation

/**
    typealias 是对已经存在的类型重新定义名字
 泛型的定义主要有以下两种：
 
 在程序编码中一些包含类型参数的类型，也就是说泛型的参数只可以代表类，不能代表个别对象。（这是当今较常见的定义）
 在程序编码中一些包含参数的类。其参数可以代表类或对象等等。（现在人们大多把这称作模板）
 不论使用那个定义，泛型的参数在真正使用泛型时都必须作出指明。
*/

//eg:

typealias Location = CGPoint
typealias Distance = Double

func distanceBetweenPoint(location: Location, toLocation: Location) ->Distance {
    let dx = Distance(location.x - toLocation.x)
    let dy = Distance(location.y - toLocation.y)
    
    return sqrt(dx * dx + dy * dy)
}

let l1: Location = Location(x: 10, y: 10)
let l2: Location = Location(x: 30, y: 30)

let distance = distanceBetweenPoint(l1, toLocation: l2)

//泛型interface 范型确定后才能用typealias命名
class People<T>{}

//------------wrong----
//typealias Worker = People
//typealias Worker1 = People<T>
//typealias Worker2<T> = People<T>

typealias WorkId = Int
typealias Worker = People<WorkId>



