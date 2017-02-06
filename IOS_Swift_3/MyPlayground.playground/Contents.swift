//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var myName = "Dushko"
print(myName)
myName == "Dushko"
print(myName == "Dushko")

let name = "Duki"

print("Hello , \(name)")
print("Hi " + name)

let myInt = 8
print(myInt + 100)

let myAge = 27

print("My name is \(myName) and I am \(myAge) years old")

var a: Double = 8.73
var b = Double(9.51 )

print(Double (9 / 5))

//Chalenge double 5.76 and int 8 print(product of 5.76 and 8 is)

var x: Double = 5.76
var y: Int = 8
var z = Int(x) + y
var c = x + Double(y)
var d = y - Int(x)
var f = Double(y) - x
var g = Int(x) * y
var h = x * Double(y)
var i = y / Int(x)
var j = Double(y) / x
print("Product of \(x) and \(y) is \(c) \(d) \(f) \(g) \(h) \(i) \(j)")

//Array

var myArray = [Double(3.87), Double(7.1), Double(8.9)]
myArray.remove(at: 1)
myArray.append(Double(3.87 * 8.9))
print(myArray)

var myArray1 = [3.87, 7.1, 8.9]
myArray1.remove(at: 1)
myArray1.append(myArray1[0] * myArray1[1])

//Dictionary

var dictionary = ["computer": "Something to play Call Of Duty on", "coffe": "best drink ever"]
print(dictionary["computer"])

print(dictionary.count)

dictionary["pen"] = "Old fashioned writing implement"
dictionary.removeValue(forKey: "computer")
print(dictionary)

var gameCharacters = [String: Decimal]()

gameCharacters["ghoust"] = 8.7

//Challenge Menu pizza (10.99), ice cream(4.99), salad(7.99) Print "The total cost of my meal is xxxx "

var menu = ["pizza": 10.99, "ice_cream": 4.99, "salad":7.99]

print("The total cost of my meal is \(menu["pizza"]! + menu["salad"]!)  ")


//If statement

let age = 18

if (age >= 18)
{
    print("You can play")
}
else
{
    print("You're too young")
}

//check username

let names = "kirsten"

if names != "rob"
{
    print("Hi " + names + "! You can play")
}
else
{
    print("Sorry, " + names + ", you can't play")
}


//2 if statement with And

if names == "rob" && age >= 18
{
    print("You can play")
}
else
{
    print("Sorry Rob, you need to get older")
}

//2 If statements With Or

if names == "rob" || names == "kirsten"
{
    print("Welcome " + names)
}

//Booleans With if Statements

let isMale = true

if isMale
{
    print("You're male!")
}

//Login system username/passsword 1.They are correct. 2.They are both wrong. 3.Username is wrong. 4.Password is wrong

let username = "programer4e"
let password = "prog12341"

if username == "programer4e" && password == "prog1234"
{
    print("They are correct you are log in")
} else if username != "programer4e" && password != "prog1234"
{
    print("They are both wrong")
} else if username  == "programer4e"
{
    print("Password is wrong")
}
else
{
    print("Username is wrong")
}

//While Loops

var k = 1

while k
    < 10
{
    print(k)
    k += 1
}
//challenge - display the first 20 numbers in the 7 times table
 var l = 1

while l <=  20
{
    print(l * 7)
    l += 1
}
//Challenge use while loop to add to each of the values in the array

var array3 = [7,23,98,1,0,763]
var m = 0
while m < array3.count
{
    array3[m] += 1
    
    m += 1

}
    print(array3)


let myNewArray = [8, 4, 8, 1]

for number21 in myNewArray
{
    print(number21)
}

let FamilyMembers = ["trpe", "stole", "trajce","mirko"]

for familyMember in FamilyMembers
{
    print("Hi There \(familyMember)")
}

//how to get the position on array, well we use (index for position on some element into array and value which  present a value for each element into array) so let's get how it's look like

var myNumbers = [7, 2, 9, 4, 1]

for (index, value) in myNumbers.enumerated()
{
    
    myNumbers[index] += 1
    
}
print(myNumbers)

//array containing 8, 7, 19, 28. Halve each of the value 
//one option for get a value with one decimal is var halveArray = [Double](), and the secound is when to each number we added a .0 after the number

var halveArray = [8.0, 7.0, 19.0, 28.0]

for (index , value) in halveArray.enumerated()
{
    halveArray[index] /= 2
    
}
print(halveArray)


//Class and Objects

class Ghost
{
    var isAlive = true
    
    var strength = 9
    
    func kill()
    {
        
        isAlive = false
        
    }
    
    func isStrong() -> Bool
    {
        
        if strength > 10
        {
            return true
        }
        else
        {
            return false
        }
        
    }
}

var ghost = Ghost()//This is a object from the class

print(ghost.isAlive)

ghost.strength = 20

print(ghost.strength)

ghost.kill()

print(ghost.isAlive)

print(ghost.isStrong())


var numberes: Int?

print(numberes)

let userEnteredText = "three"

let userEnteredInteger = Int(userEnteredText)

if let catAge = userEnteredInteger
{
    print(catAge * 7)
}
else
{
    //show an error message to the user
}