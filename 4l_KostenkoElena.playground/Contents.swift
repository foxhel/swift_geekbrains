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

enum TruckType {
    case unknown, tipper, tractor, tanker
}


class Car {
    var brand: String
    var engineHP: Int
    var year: Int
    var engineState: EngineState
    var windowState: WindowState
    var trunkState: TrunkState
    var currentSpeed: Float
    init(Brand: String, EngineHP: Int, Year: Int) {
        brand = Brand
        engineHP = EngineHP
        year = Year
        engineState = .stop
        windowState = .close
        trunkState = .empty
        currentSpeed = 0
    }
    func showState(){
        print("Brand: ", self.brand)
        print("HP: ", self.engineHP)
        print("Year: ", self.year)
        print("Engine State: ", self.engineState)
        print("Windows State: ", self.windowState)
        print("Current speed: ", self.currentSpeed)
    }

}

class trunkCar: Car {
    var truckType: TruckType = .unknown
    override func showState() {
        super.showState()
        print("Truck Type: ", self.truckType)
    }
}

class sportСar: Car {
    var racerName: String
    init(Brand: String, EngineHP: Int, Year: Int, RacerName: String) {
        racerName = RacerName
        super.init(Brand: Brand, EngineHP: EngineHP, Year: Year)
    }
    override func showState() {
        super.showState()
        print("Racer Name: ", self.racerName)
    }
}

var mySportCar = sportСar.init(Brand: "BMW", EngineHP: 350, Year: 2018, RacerName: "Fill Manson")
mySportCar.engineState = .start
mySportCar.showState()
print("\n")

var mySportCar1 = sportСar.init(Brand: "McLaren", EngineHP: 600, Year: 2019, RacerName: "Enzo")
mySportCar.engineState = .start
mySportCar1.showState()
print("\n")

var myTruckCar = trunkCar.init(Brand: "MAN", EngineHP: 210, Year: 2020)
myTruckCar.truckType = .tipper
myTruckCar.windowState = .open

myTruckCar.showState()

