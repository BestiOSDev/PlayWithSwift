import UIKit
import PlaygroundSupport

let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))

let circle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0

let startingColor = UIColor(red: (253.0/255.0), green: (159.0/255.0), blue: (47.0/255.0), alpha: 1.0)
circle.backgroundColor = startingColor

containerView.addSubview(circle);

let rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
rectangle.center = containerView.center
rectangle.layer.cornerRadius = 5.0

rectangle.backgroundColor = UIColor.white

containerView.addSubview(rectangle)

// Swift3中，原先的animateWithDuration(:animations:)函数，变成了animate(withDuration:animations:)
// 在这个调用了，我修改成为了结尾闭包的调用形式
UIView.animate(withDuration:2.0){
    let endingColor = UIColor(red: (255.0/255.0), green: (61.0/255.0), blue: (24.0/255.0), alpha: 1.0)
    circle.backgroundColor = endingColor

    // 原先的C函数式的CGAffineTransform开头的函数内，均统一了函数调用规范，具体规范，我们在函数一节再做具体介绍：）
    let scaleTransform = CGAffineTransform(scaleX:5.0, y:5.0)
    circle.transform = scaleTransform
    
    let rotationTransform = CGAffineTransform(rotationAngle: 3.14)
    rectangle.transform = rotationTransform
}

PlaygroundPage.current.liveView = containerView
