//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let view                = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
view.backgroundColor    = UIColor.orange

let button              = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
button.center           = view.center

// Swift 2.2中，Playground中的UI控件支持交互了。简单为button在Highlighted的状态下设置另外一个颜色，就可以点击看到效果了:)
button.setTitleColor(UIColor.white, for: .normal)
button.setTitleColor(UIColor.blue, for: .highlighted)

button.setTitle("Click Me :)", for: .normal)

button

view.addSubview(button)

struct Point {
    
    let x : Double
    let y : Double
    init(x:Double,y:Double) {
        self.x = x
        self.y = y
    }
}

let p = Point(x: 100.0, y: 100.0)
print(p)


PlaygroundPage.current.liveView = view




