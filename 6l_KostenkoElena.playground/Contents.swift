import UIKit

protocol Cake {
    var weight: Double { get set }
}

class ChocolateCake: Cake {
    var weight: Double
    var chocPercent: Double
    func GetWeightOfChocolate() -> Double {
        return chocPercent*weight
    }
    init(weight: Double, chocPercent: Double) {
        self.weight = weight
        self.chocPercent = chocPercent
    }
}

class PotatoCake: Cake {
    var weight: Double
    var cheesePercent: Double
    var pricePerKG: Double
    func calculatePrice() -> Double {
        return weight * pricePerKG
    }
    init(weight: Double, cheesePercent: Double, pricePerKG: Double) {
        self.weight = weight
        self.cheesePercent = cheesePercent
        self.pricePerKG = pricePerKG
    }
}

struct Stack<T: Cake> {
    private var elements: [T] = []
    mutating func push(_ element: T) {
        elements.append(element)
    }
    mutating func pop() -> T? {
        return elements.removeLast()
    }
    var totalWeght : Double {
        var weight = 0.0
        for element in elements {
            weight += element.weight
        }
        return weight
    }
    mutating func searchByWeight(_ maxWeight: Double) -> [T] {
        let res = elements.filter { $0.weight <= maxWeight }
        return res
    }
    subscript(index: Int) -> T? {
        if (index >= 0 && elements.count > index) {
            return elements[index]
        } else {
            return nil
        }
    }
}

var stack = Stack<ChocolateCake>()
stack.push(ChocolateCake(weight: 200, chocPercent: 3))
stack.push(ChocolateCake(weight: 500, chocPercent: 10))
stack.push(ChocolateCake(weight: 300, chocPercent: 1))
stack[2]?.GetWeightOfChocolate()
let found = stack.searchByWeight(400)
print(found.count)

stack[5]

var PotatoStack = Stack<PotatoCake>()
PotatoStack.push(PotatoCake(weight: 200, cheesePercent: 3, pricePerKG: 10))
PotatoStack.push(PotatoCake(weight: 500, cheesePercent: 10, pricePerKG: 12 ))
PotatoStack.push(PotatoCake(weight: 300, cheesePercent: 1, pricePerKG: 8))
PotatoStack[2]?.calculatePrice()
PotatoStack[0]
PotatoStack[4]
