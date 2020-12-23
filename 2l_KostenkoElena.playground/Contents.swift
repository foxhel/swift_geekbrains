import UIKit

//1.Написать функцию, которая определяет, четное число или нет.

var myArray: [Int] = [15, 9, 51, 86, 54, 17, 64];
for myInt: Int in myArray{
     if myInt % 2 == 0 {
       print ("\(myInt) ченое число")
     } else {
       print ("\(myInt) нечетное число")
     }
}



//2.Написать функцию, которая определяет, делится ли число без остатка на 3.

for divis in myArray{
    if divis % 3 == 0 {
        print("\(divis) делится на 3 без остатка")
    } else {
        print("\(divis) делится на 3 с остатком")
    }
}


//3.Создать возрастающий массив из 100 чисел.

var number: [Int] = Array(1...100)

print(number)

//4.Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var filteredArray = number.filter {$0 % 2 == 0 && $0 % 3 != 0}
   print(filteredArray)




//5.Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.Fn=Fn-1 + Fn-2

var fib = [Double]()
func addFibNumber(fibarr: inout [Double]) {
    let fibarLen = fibarr.count
    switch fibarLen{
    case 0:
        fibarr.append(0)
    case 1:
        fibarr.append(1)
    default:
        print(fibarr[fibarLen-1])
        fibarr.append(fibarr[fibarLen - 1] + fibarr[fibarLen-2])
    }
}

for _ in 1...100{
    addFibNumber(fibarr: &fib)
}

print(fib)



//6.Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена.

var p: Int = 2
var erat = Array(2...102)
var toRemowe = [Int]()

func findForP(e: inout [Int], p: Int, toRemowe: inout [Int])-> Void{
    for i in e{
        if i == p {
            continue
        }
        if i % p == 0{
            toRemowe.append(i)
        }
    }
}

for i in erat{
    findForP(e: &erat, p: i, toRemowe: &toRemowe)
}

for (i, v) in erat.enumerated(){
    if toRemowe.contains(v){
        erat[i] = -1
    }
}
erat = erat.filter {$0 != -1}


print(erat)
