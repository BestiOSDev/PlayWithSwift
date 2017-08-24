//: Playground - noun: a place where people can play

import UIKit

func swapTwoInt( a: inout Int ,  _ b : inout Int){
    (a,b) = (b,a)
}

var a: Int = 0
var b: Int = 6
//swapTwoInt(&a, &b)
swapTwoInt(a: &a, &b)
a
b

func swapTwoDouble( a : inout Double ,  _ b : inout Double){
    (a,b) = (b,a)
}


// 使用generic
// generic function
func swapTwoThings<T>( a : inout T ,  _ b : inout T){
    (a,b) = (b,a)
}

var hello = "Hello"
var bye = "Bye"
//swapTwoThings(&hello, &bye)
swapTwoThings(a: &hello, &bye)
hello
bye

//swapTwoThings(&a, &b)
swapTwoThings(a: &a, &b)
a
b

swap(&a, &b)


