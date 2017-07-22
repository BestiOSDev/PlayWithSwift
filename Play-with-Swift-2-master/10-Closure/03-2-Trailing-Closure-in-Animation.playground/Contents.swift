//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


let showView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))

let rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
rectangle.center = showView.center
rectangle.backgroundColor = UIColor.red

showView.addSubview(rectangle)

UIView.animate(withDuration: 2.0){
    rectangle.backgroundColor = UIColor.blueColor
    rectangle.frame = showView.frame
}

PlaygroundPage.current.liveView = showView
