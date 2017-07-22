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

