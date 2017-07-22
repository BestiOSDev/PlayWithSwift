//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
// swift3中，原来的UIColor.orangeColor()变为UIColor.orange
view.backgroundColor = UIColor.orange;

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
button.center = view.center

// swift3中，UIColor中默认颜色的调用方式改变，同上
// 同时，函数参数名称也进行了大幅度化简，比如setTitle函数中，原来的第二个参数forState，现在变为for
// 另外，对于枚举量，首字母变为小写字母，使得整体显得更像一个“成员变量”，如原先的.Normal；.Highlighted，现在均变为了.normal，.highlighted
button.setTitleColor(UIColor.white, for: .normal)
button.setTitleColor(UIColor.blue, for: .highlighted)

button.setTitle("Click Me :)", for: .normal)

view.addSubview(button)


// 对于在Playground中显示简单界面，在XCode8中也进行了调整，不过不属于这个课程的重点。以后有机会，像大家详细介绍Playground中有意思的内容：）
PlaygroundPage.current.liveView = view


