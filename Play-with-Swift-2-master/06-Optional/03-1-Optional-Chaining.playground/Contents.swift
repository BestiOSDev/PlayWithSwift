//: Playground - noun: a place where people can play

import UIKit


// Optional chaining
var errorMessage: String? = "Not Found"
if let errorMessage = errorMessage{
    errorMessage.uppercased()
}

errorMessage?.uppercased()

var uppercaseErrorMessage = errorMessage?.uppercased()

if let errorMessage = errorMessage?.uppercased(){
    errorMessage
}

// Optional chaining 也可以使用!
let uppercaseErrorMessage2 = errorMessage!.uppercased()



