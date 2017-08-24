//: Playground - noun: a place where people can play

import UIKit


struct Location{
    
    let latitude: Double
    let longitude: Double
    var placeName: String?
    
    init(latitude: Double, longitude: Double, placeName: String){
        
        self.latitude = latitude
        self.longitude = longitude
        self.placeName = placeName
    }
    
    init(latitude: Double, longitude: Double){
        
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(coordinateString: String){
        
        let commaIndex = coordinateString.range(of: ",")?.lowerBound
        let firstElement = coordinateString.substring(to: commaIndex!)
        let secondStartIndex = coordinateString.index(after: commaIndex!)
        let secondElement = coordinateString.substring(from: secondStartIndex)

        // 即使是let的量，若没有初始值，在初始化的过程中仍然可以复制
        // 但如果初始化了一次以后，就不能再被赋值了
        //latitude = 0
        //longitude = 0

        latitude = Double(firstElement)!
        longitude = Double(secondElement)!
    }
    
    func printLocation(){
        print("The Location is \(self.latitude),\(self.longitude)")
    }
    
    func isNorth() -> Bool{
        return self.latitude > 0
    }
    
    func isSouth() -> Bool{
        return !self.isNorth()
    }
    
    // 注意，给出两个地点的经纬度，计算两点之间的距离不是这么计算！
    // 这里只做演示用
    func distanceTo( location: Location ) -> Double{
        
        return sqrt(pow(self.latitude - location.latitude,2) + pow(self.longitude - location.latitude,2))
        
    }
}


let appleHeadQuarterLocation = Location(latitude: 37.3230, longitude: -122.0322)
appleHeadQuarterLocation.printLocation()
appleHeadQuarterLocation.isNorth()
appleHeadQuarterLocation.isSouth()

let googleHeadQuarterLocation = Location(latitude: 37.4220, longitude: -122.0841)
appleHeadQuarterLocation.distanceTo(location: googleHeadQuarterLocation)

