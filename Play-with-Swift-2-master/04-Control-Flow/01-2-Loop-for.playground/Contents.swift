//: Playground - noun: a place where people can play

import UIKit

// for-in
for i in -99...99{
    i*i
}

// for
// 如下C风格的for循环，将在Swift3中被移除。现在，大家使用这种风格的循环会看到一个警告。请大家拥抱for-in循环吧！
//for var i = -99 ; i <= 99 ; i += 1 {
//    i*i
//}
//Swift3.0写法 注释部分已废弃
for i in -99..<99 {
    i*i
}

// 将循环初始条件放在外面
var index = -99
//for ; index <= 99 ; index += 1 {
//    index*index
//}
//Swift3.0写法 注释部分已废弃
for _ in index..<99 {
    index*index
}

// 循环变量的更改可以自定义
//for var a = -6.28 ; a <= 6.28 ; a += 0.1 {
//    sin(a)
//}
//Swift3.0写法 注释部分已废弃
for a in stride(from: -6.28, to: 6.28 , by: 0.1) {
    sin(a)
}

var index1 = -99
var step = 1
////for ; index <= 99 ; index += step {
////    index*index
////    step *= 2
////}
////Swift3.0写法 注释部分已废弃
//

for _ in stride(from: index1, through: 99, by:1) {
    index1*index1
    step *= 2
}

