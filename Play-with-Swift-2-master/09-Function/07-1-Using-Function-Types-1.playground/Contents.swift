//: Playground - noun: a place where people can play

import UIKit


func changeScores1(score : Int ) -> Int{
    return Int(sqrt(Double(score))*10)
}

func changeScores2(score :Int) -> Int {
    return Int( Double(score) / 150.0 * 100.0 )
}

func changeScores(scores : inout [Int] , by changeScore : (Int) -> Int) {
    for (index,score) in scores.enumerated(){
        scores[index] = changeScore(score)
    }
}


var scores1 = [36,61,78,89,99]
var scores2 = [88,101,124,137,150]
var scores3 = [36,61,78,89,99]

changeScores(scores: &scores1, by: changeScores1)
changeScores(scores: &scores2, by: changeScores2)

func changeScores3(score : Int) -> Int {
    let result = score + 3
    return result >= 100 ? 100 : result
}

changeScores(scores: &scores3, by: changeScores3)




var scores : [Int] = [65,91,47,39,99,95,49,87]

scores.map(changeScores1)

func isPassOrFail(score : Int) -> String {
    return score < 60 ? "Fail" : "True"
}
scores.map(isPassOrFail)

func fail(score : Int) -> Bool {
    return score < 60
}

scores.filter(fail)

func add(num1 : Int,_ num2 : Int) -> Int {
    return num1 + num2
}

scores.reduce(0, add)
scores.reduce(0, +)


func concatenate(str : String,number:Int) -> String {
    return str + String(number) + " "
}

scores.reduce("", concatenate)
