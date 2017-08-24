//: Playground - noun: a place where people can play

import UIKit

var skillsOfA: Set<String> = ["swift","OC"]
var skillsOfB: Set<String> = ["HTML","CSS","Javascript"]
var skillsOfC: Set<String> = []


// 用let声明的常量集合不可被修改


// 添加元素
skillsOfC.insert("swift")
skillsOfC.insert("HTML")
skillsOfC.insert("CSS")
// 重复添加元素
skillsOfC.insert("CSS")


// 删除元素
skillsOfC.remove("CSS")
// 删除没有的元素
skillsOfC.remove("Javascript")

if let skill = skillsOfC.remove("HTML"){
    print("HTML is removed.")
}

//skillsOfC.removeAll()


// 并
skillsOfA.union(skillsOfC)
//skillsOfA.unionInPlace(skilsOfC)


// 交
skillsOfA.intersection(skillsOfC)
//skillsOfA.intersectInPlace(skillsOfC)


// 减
skillsOfA.subtract(skillsOfC)
//skillsOfA.subtractInPlace(skillsOfC)


// 异或
skillsOfA.symmetricDifference(skillsOfC)
//skillsOfA.exclusiveOrInPlace(skillsOfC)


// 操作对象可以是数组
skillsOfA.union(["java","android"])


skillsOfA
skillsOfB
skillsOfC
var skillsOfD: Set = ["swift"]

// 子集
skillsOfD.isSubset(of: skillsOfA)
skillsOfD.isStrictSubset(of: skillsOfA)

// 超集
skillsOfA.isSuperset(of: skillsOfD)
skillsOfA.isStrictSuperset(of: skillsOfD)

// 判断相离
skillsOfA.isDisjoint(with: skillsOfB)
skillsOfA.isDisjoint(with: skillsOfC)
