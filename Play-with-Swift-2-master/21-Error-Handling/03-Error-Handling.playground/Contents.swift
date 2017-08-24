//: Playground - noun: a place where people can play

import UIKit


class VendingMachine{
    
    struct Item{
        
        enum MyType: String{
            case Water
            case Cola
            case Juice
        }
        
        let type:  MyType
        let price: Int
        var count: Int
    }
    
    enum MyError: Error, CustomStringConvertible{
        case NoSuchItem
        case NotEnoughMoney(Int)
        case OutOfStock
        
        var description: String{
            switch self {
            case .NoSuchItem:                return "Not Such Item"
            case .NotEnoughMoney(let price): return "Not Enough Money. " + String(price) + " Yuan needed."
            case .OutOfStock:                return "Out of Stock"
            }
        }
    }
    
    private var items = [ "Mineral Water" : Item(type: .Water, price:2, count:10),
                          "Coca Cola" : Item(type: .Cola, price: 3, count: 5),
                          "Orange Juice" : Item(type: .Juice, price: 5, count: 3)]
    
    
    func vend(itemName: String, money: Int) throws -> Int{
        
        guard let item = items[itemName] else{
            throw VendingMachine.MyError.NoSuchItem
        }
        
        guard money >= item.price else{
            throw VendingMachine.MyError.NotEnoughMoney(item.price)
        }
        
        guard item.count > 0 else{
            throw VendingMachine.MyError.OutOfStock
        }
        
        dispenseItem(itemName: itemName)
        
        return money - item.price
    }
    
    private func dispenseItem(itemName: String){
        items[itemName]!.count -= 1
        print("Enjoy your",itemName)
    }

    func display(){
        print("Want something to drink?")
        for itemName in items.keys{
            print( "*" , itemName )
        }
        print("=============================")
    }
}

let machine = VendingMachine()
machine.display()

var pocketMoney = 3


// Handle Error by try!
pocketMoney = try! machine.vend(itemName: "Coca Cola", money: pocketMoney)
print(pocketMoney,"Yuan left")


// Handle Error by try?
try? machine.vend(itemName: "Coca Cola", money: pocketMoney)


// Handle Error by do catch
do{
    pocketMoney = try machine.vend(itemName: "Coca Cola", money: pocketMoney)
    print(pocketMoney,"Yuan left")
}
catch VendingMachine.MyError.NoSuchItem{
    print("No Such Item")
}
catch VendingMachine.MyError.NotEnoughMoney(let price){
    print("Not Enough Money." , price , "Yuan needed.")
}
catch VendingMachine.MyError.OutOfStock{
    print("Out of Stock")
}
catch{
    print("Error occured during vending.")
}


do{
    pocketMoney = try machine.vend(itemName: "Coca Cola", money: pocketMoney)
    print(pocketMoney,"Yuan left")
}
catch let error as VendingMachine.MyError{
    print(error)
}
catch{
    print("Error occured during vending.")
}
