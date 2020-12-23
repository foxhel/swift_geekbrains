import UIKit
//Решение квадратного уравнения ax^2+bx+c=0

var a:Double = 3
var b:Double = 12
var c:Double = 4
var x1:Double = 0
var x2:Double = 0

var D = pow(b,2)-4*a*c

    if(D<0){
    print("корней нет")
}
    if(D==0){
    x1 = (-b+sqrt(D))/(2*a)
    print(x1)
}
    if(D>0){
    x1 = (-b+sqrt(D))/(2*a)
    x2 = (-b-sqrt(D))/(2*a)
    print(x1, x2)
}


//Даны катеты прямоугольного теугольника. Найти гипотенузу, периметр, площадь

var k:Double = 8
var z:Double = 6
var m:Double
var P:Double
var S:Double
m = sqrt(pow(k, 2)+pow(z, 2))
P = k+z+m
S = (k*z)/2
print("Гипотенуза =",m)
print("Периметр =", P)
print("Площадь =", S)


//Задание 3. Найти сумму вкалда за 5 лет

var deposit:Double = 1000
var percent:Double = 12
percent = percent/100
var year = 5

for i in 1...year {
    deposit = (deposit * percent) + deposit
    print("Сумма вклада за год ", i," : " , deposit)
}
