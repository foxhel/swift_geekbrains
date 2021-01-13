import UIKit

enum engine {
    case start, stop
}

enum window {
    case open, close
}

enum trunk {
    case full, empty
}

enum truckType {
    case unknown, tipper, tractor, tanker
}


protocol Car {
    
    var brand: String {get}
    var engineHP: Int {get}
    var year: Int {get}
    var engineState: engine {get set}
    var windowState: window {get set}
    var trunkState: trunk{get set}
    var currentSpeed: Float {get set}
    
}

extension Car {
    mutating func changeEngineState (engineState: engine){
        self.engineState = engineState
    }
    mutating func changeWindowState (windowState: window){
        self.windowState = windowState
    }
    mutating func changeTrunkState (trunkState: trunk){
        self.trunkState = trunkState
    }
}

class baseCar: Car{
    var brand: String
    var engineHP: Int
    var year: Int
    var engineState: engine = .stop
    var windowState: window = .close
    var trunkState: trunk = .empty
    var currentSpeed: Float = 0
    init(brand: String, engineHP: Int, year: Int) {
        self.brand = brand
        self.engineHP = engineHP
        self.year = year
    }
}
class trunkCar: baseCar, CustomStringConvertible {
    var TruckType: truckType = .unknown
    var description: String{
        return "Brand \(brand), year \(year), engine \(engineHP), engine \(engineState), window \(windowState), trunk \(trunkState), truck \(TruckType)"
    }
}
        
class sportСar: baseCar, CustomStringConvertible {
    var racerName: String
    init(Brand: String, EngineHP: Int, Year: Int, RacerName: String) {
        racerName = RacerName
        super.init(brand: Brand, engineHP: EngineHP, year: Year)
    }
    var description: String{
        return "Brand \(brand), year \(year), engine \(engineHP), engine \(engineState), window \(windowState), trunk \(trunkState), Racer Name: \(racerName)"
    }
}


var myTruckCar = trunkCar.init (brand: "MAN", engineHP: 210, year: 2020)
myTruckCar.changeWindowState(windowState: .open)
myTruckCar.TruckType = .tipper

var mySportCar = sportСar.init(Brand: "BMW", EngineHP: 350, Year: 2018, RacerName: "Fill Manson")
mySportCar.changeEngineState(engineState: .start)
mySportCar.racerName

print (myTruckCar)
print (mySportCar)
