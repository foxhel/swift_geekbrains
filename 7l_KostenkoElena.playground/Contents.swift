import UIKit

enum printerError: Error {
    case noBlackInk
    case noColorInk
    case noPaper
}

class printer {
    var blackVol: Int
    var redVol: Int
    var blueVol: Int
    var yelVol: Int
    var paperCount: Int
    var blackUsg = 10
    var redUsg = 5
    var blueUsg = 5
    var yelUsg = 5
    init (BlackVol: Int, RedVol: Int, BlueVol: Int, YelVol: Int, PaperCount: Int ){
        blackVol = BlackVol
        redVol = RedVol
        blueVol = BlueVol
        yelVol = YelVol
        paperCount = PaperCount
    }
    func printBW (copyCount: Int) throws -> Int {
        guard copyCount * blackUsg <= blackVol else{
            throw printerError.noBlackInk
        }
        guard copyCount <= paperCount else {
            throw printerError.noPaper
        }
        blackVol -= copyCount * blackUsg
        paperCount -= copyCount
        return copyCount
    }
    func printColor (copyCount: Int) throws -> Int {
        guard (copyCount * redUsg <= redVol) || (copyCount * blueUsg <= blueVol) || (copyCount * yelUsg <= yelVol) else {
            throw printerError.noColorInk
        }
        guard copyCount <= paperCount else {
            throw printerError.noPaper
        }
        redVol -= copyCount * redUsg
        blueVol -= copyCount * blueUsg
        yelVol -= copyCount * yelUsg
        return copyCount
    }
}

let myPrinter = printer (BlackVol: 50, RedVol: 30, BlueVol: 30, YelVol: 30, PaperCount: 5 )

do {
    try myPrinter.printBW(copyCount: 3)
}catch printerError.noBlackInk{
    print("Нет черной краски")
}catch printerError.noPaper{
    print("нет бумаги")
}

do{
    try myPrinter.printColor(copyCount: 6)
}catch printerError.noColorInk{
    print("Нет цветной краски")
}catch printerError.noPaper{
    print("нет бумаги")
}

