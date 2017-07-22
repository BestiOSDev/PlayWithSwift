//: Playground - noun: a place where people can play

import UIKit

var battery = 21
let batteryColor:UIColor
if battery <= 20{
    batteryColor = UIColor.red
}
else{
    batteryColor = UIColor.green
}
batteryColor


let batteryColor2 = battery <= 20 ? UIColor.red : UIColor.green


// 在Swift3中，API名称的改变近乎是最大的一个改变。原先的UIColor.redColor()和UIColor.greenColor()变成了UIColor.red和UIColor.green，怎么样，是不是简单了很多？
