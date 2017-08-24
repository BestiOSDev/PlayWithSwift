//: Playground - noun: a place where people can play

import UIKit

//Swift4.0 String 默认是一个集合 因此可以直接从集合里获取元素  可以不使用 str.characters
var str = "Hello, playground"

// for-in 遍历String
for c in str{
    print(c)
}


// Character和String的相互转换
let mark: Character = "!"
//str + mark
str + String(mark)

// append 相当于 +=
str.append(mark)


// Characters是基于Unicode的
let englishLetter: Character = "a"
let chineseLetter: Character = "慕"
let dog: Character = "🐶"
let coolGuy = "\u{1F60E}"


// String对Unicode的支持
var coolLetters = "abc"
coolLetters.count

var chineseLetters = "慕课网"
chineseLetters.count

var coolGuys = "\u{1F60E}\u{1F60E}\u{1F60E}"
coolGuys.count

var cafe = "café"
var cafe2 = "cafe\u{0301}"
cafe.count
cafe2.count


// String的比较
cafe == cafe2
