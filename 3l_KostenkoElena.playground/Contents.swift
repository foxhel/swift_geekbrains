import UIKit

enum EngineState{
    case start, stop
}

enum WindowState{
    case open, close
}

enum TrunkState{
    case full, empty
}

struct sportCar{
    let brand: String
    var engineHP: Int
    var year: Int
    var engineState: EngineState
    var windowState: WindowState
    var trunkState: TrunkState
    
    mutating func startEngine(){
        self.engineState = .start
    }
    mutating func stopEngine(){
        self.engineState = .stop
    }
    mutating func openWindow(){
        self.windowState = .open
    }
    mutating func closeWindow(){
        self.windowState = .close
    }
    mutating func fullTrunk(){
        self.trunkState = .full
    }
    mutating func emptyTrunk(){
        self.trunkState = .empty
    }
    init(Brand: String, EngineHP: Int, Year: Int) {
        brand = Brand
        engineHP = EngineHP
        year = Year
        engineState = .stop
        windowState = .close
        trunkState = .empty
    }
}


var mySportCar = sportCar.init(Brand: "BMW", EngineHP: 350, Year: 2018)
print(mySportCar)





struct trunkCar{
    let brand: String
    var engineHP: Int
    var year: Int
    var engineState: EngineState
    var windowState: WindowState
    var trunkState: TrunkState
    
    mutating func startEngine(){
        self.engineState = .start
    }
    mutating func stopEngine(){
        self.engineState = .stop
    }
    mutating func openWindow(){
        self.windowState = .open
    }
    mutating func closeWindow(){
        self.windowState = .close
    }
    mutating func fullTrunk(){
        self.trunkState = .full
    }
    mutating func emptyTrunk(){
        self.trunkState = .empty
    }
    init(Brand: String, EngineHP: Int, Year: Int) {
        brand = Brand
        engineHP = EngineHP
        year = Year
        engineState = .stop
        windowState = .close
        trunkState = .full
    }
}

var myTrunkCar = trunkCar.init(Brand: "Mercedes", EngineHP: 510, Year: 2014)
print(myTrunkCar)
