//: Playground - noun: a place where people can play

import UIKit


// Int()
var ageInput: String = "16"

let age = Int(ageInput)

if let age = Int(ageInput), age < 20{
        
    print("You're a teenager!")
}


// Optional in String method
var greetings = "Hello"
greetings.range(of: "ll")
greetings.range(of :"mm")

