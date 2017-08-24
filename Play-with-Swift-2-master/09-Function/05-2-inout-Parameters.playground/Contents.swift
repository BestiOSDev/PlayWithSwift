//: Playground - noun: a place where people can play

import UIKit

func swapTwoInts(  a : inout Int ,  _ b  : inout Int ){
    
    // 尽量使用let
    //let t:Int = a
    //a = b
    //b = t
    
    (a,b) = (b,a)
}

var a:Int = 1
var b:Int = 2
swapTwoInts(a: &a, &b)
a
b

swap(&a, &b)
a
b
