//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Swift"

//SWIFT3.0后的语法

// 不可以使用[]获取
//str[0]
//str.characters[0]

// startIndex
let startIndex = str.startIndex
startIndex
str[startIndex]

// advancedBy
str[str.index(startIndex, offsetBy: 5)]
startIndex

let spaceIndex = str.index(startIndex, offsetBy: 6)
spaceIndex
str[spaceIndex]

// predecessor 和 succesor
str[str.index(before: spaceIndex)]
str[str.index(after: spaceIndex)]

// endIndex
let endIndex = str.endIndex
//str[endIndex]
str[str.index(before: endIndex)]

// Range
str[startIndex..<spaceIndex]
let range = ..<str.index(after: startIndex)

str.replaceSubrange(range, with: "Hi")
str.append(contentsOf: "!!!")
str.insert("?", at: endIndex)
str.remove(at: str.index(after: endIndex))
str
str.removeSubrange(str.index(endIndex, offsetBy: -2)..<endIndex)




