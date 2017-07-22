//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

class Ball : UIView{
    
    var color: UIColor!{
        didSet{
            self.setNeedsDisplay()
        }
    }
    
    var elasticity: CGFloat!
    
    lazy var mass:CGFloat = {
        let sum = (self.frame.size.width*0.5)*(self.frame.size.width*0.5)*2.0 * .pi
        return sum
        //return self.frame.size.width
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clear
    }
    
    init( frame: CGRect , color: UIColor , elasticity: CGFloat = 1.0 ) {
        super.init(frame: frame)
        self.color = color
        self.elasticity = elasticity
        self.backgroundColor = UIColor.clear
    }
    
    override var collisionBoundsType: UIDynamicItemCollisionBoundsType {
        return .ellipse
    }
    
    override func draw(_ rect: CGRect) {
        
        if let ctx = UIGraphicsGetCurrentContext(){
            ctx.setFillColor(color.cgColor )
            CGContext.fillEllipse(ctx)
            ctx.fillPath()
        }
    }
    
    class func randomBallInRect( rect: CGRect ) -> Ball{
        
        let radius = CGFloat(arc4random_uniform(40)) + 10
        let centerx = radius + CGFloat( arc4random_uniform(UInt32(rect.width-2*radius) ))
        let centery = radius + CGFloat( arc4random_uniform(UInt32(rect.height-2*radius) ))
        
        let randomColor = UIColor(
            red: CGFloat(arc4random_uniform(256))/255,
            green: CGFloat(arc4random_uniform(256))/255,
            blue: CGFloat(arc4random_uniform(256))/255, alpha: 1.0)
        
        let randomElasticity = 10000.0 + CGFloat( arc4random_uniform(2) )/10.0
        
        return Ball(frame: CGRect(x:centerx-radius, y:centery-radius, width:2*radius, height:2*radius), color: randomColor , elasticity: randomElasticity )
        
    }
}

let view = UIView(frame: CGRect(x: 0, y: 0, width: 600, height: 600))
view.backgroundColor = UIColor.white

let animator = UIDynamicAnimator(referenceView: view)
var gravity = UIGravityBehavior()
var collision = UICollisionBehavior()

var balls:[Ball] = []

let ballCount = 10
for _ in 0..<ballCount{
    
    let aBall = Ball.randomBallInRect(rect: view.bounds)
    gravity.addItem(aBall)
    collision.addItem(aBall)
    
    view.addSubview(aBall)
}

for ball in balls{
    
    let bounce = UIDynamicItemBehavior(items: [ball])
    bounce.elasticity = ball.elasticity
    bounce.density = ball.mass
    
    animator.addBehavior(bounce)
}

animator.addBehavior(gravity)

collision.translatesReferenceBoundsIntoBoundary = true
animator.addBehavior(collision)

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView       = view


