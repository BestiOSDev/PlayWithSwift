//: Playground - noun: a place where people can play

import UIKit


// 生成随机数组
var arr:[Int] = []
for _ in 0..<100{
    let num =  arc4random_uniform(1000)
    arr.append(Int(num))
}

arr


// 默认排序

arr.sort()
arr

//arr.sortInPlace()
//arr


// 在排序中使用函数参数

func biggerNumberFirst( a: Int , _ b: Int) -> Bool{
//    if a > b{
//        return true
//    }
//    return false
    
    return a > b
}

//arr.sort(biggerNumberFirst)
arr.sort(by: biggerNumberFirst(a:_:))

func cmpByNumberString( a: Int , _ b: Int ) -> Bool{
    
    return String(a) < String(b)
}

arr.sort(by: cmpByNumberString(a:_:))

func near500(a:Int , _ b:Int)->Bool{
    
    return abs(a-500) < abs(b-500) ? true : false
}

arr.sort(by:near500)
