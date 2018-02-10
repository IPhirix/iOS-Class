//: Playground - noun: a place pwhere people can play
//This is a single line comment
//This should be on the testFeatureBranch
//Crap...I didn't mean to add that

import UIKit



//Variables are not a constant
//= is an assignment operator
var message = "Hello, world!"

//Operators
//unary - works on a singel opperator
//binary - works on two opperators
//ternaery - works on three opperators

var bankAccountBalance = 100

//? true : (or) false
//example below is true
var cashRegisterMessage = bankAccountBalance >= 50 ? "You just bought the item" : "You don't have enough money to buy the item"


//Strings
//The below example is of type inferance. the variable 'str' has a 'string' type data assigned to it
//You're not explicitely declaring the type. It's infering what type it is
var str = "Hello, playground"


//Explicitely declared type, 'String'
var str2: String = "Hello, playground"

var firstName = "Jason"
var lastName = "Wilson"
var age = 27

//String concatination
//Also called string manipulation
var fullName = firstName + " " + lastName


//String interpolation
//\(variable goes here)
var fullName2 = "\(firstName) \(lastName) is \(age)"

//appending property
fullName.append(" III")

//basic properties: capitalized, lowercase, uppercase
var bookTitle = "This is the end"
bookTitle = bookTitle.capitalized
bookTitle = bookTitle.lowercased()
bookTitle = bookTitle.uppercased()


//contains and replace
var sentence = "What the fuck! Hell that crazy"
sentence = sentence.lowercased()

if sentence.contains("fuck") || sentence.contains("hell") {
    sentence.replacingOccurrences(of: "fuck", with: "frick")
    sentence.replacingOccurrences(of: "hell", with: "heck")
}


//integers, floats, and doubles
var myAge = 28
var weight: Int = 240

//swift prefers double over float
var milesRan = 56.45

var someNum: Double = 23.96


//Arithmetic Operators
//+ = / * ?
var area = 15 * 20
var sum = 5 + 6
var diff = 10 - 3
var div = 12/3
var remainder = 12%5
var randoNum1 = 13

//Determining if the number is even or odd
if randoNum1 % 2 == 0 {
    print("This is an even number")
}
else {
    print("This is an odd number")
}













//Array
var salaries = [45000.0, 50000.0, 55000.0, 60000.0]
4

//while loop
var index = 0
repeat {
    salaries[index] = salaries[index] + (salaries[index] * 0.10)
    index += 1
}
while(index < salaries.count)



//for in loop
//range or sequence of number 0...5 (inclusive)
for i in 0..<salaries.count{
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
    print(salaries[i])
}


//for each loop
for salary in salaries {
    print("Salary: \(salary)")
}


//Dictionaires (Hash Tables/Maps)
//3 Main collection types: Array, Set, Dictionary(Keys, Values)

//Dictionary
var namesOfIntegers = [Int: String]()

namesOfIntegers[3] = "three"
namesOfIntegers[44] = "fortyfour"

//to empty a dictionary
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toranto Pearson", "LAX": "Los Angels Int."]

print("The airports dictionary has: \(airports.count) items")

//Emptys the entire dictionary
airports = [:]

if airports.isEmpty {
    print("The airport dictionarty is empty...")
}

//Overwrites this dictionary entry
airports["LHR"] = "London"
airports["LHR"] = "London Meathrow"

airports["ORD"] = "Chicago"
//Deletes the dictionary item
airports["ORD"] = nil
airports["ORD"] = "O'Hare"

//Tuple has one or more elements in it. Tuple is a Data type
//for (key, value)
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for key in airports.keys {
    print("Key: \(key)")
}

for val in airports.values {
    print("Value: \(val)")
}


//Optionals
//You're saying this variable may or may not have a value
var lotteryWinnings: Int?

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

//You're creating a constant "winnings". If there's a value in lotteryWinnings, assign it to winnings and then Print it. This is a better way to do things besides using "!" to unwrapp it
if let winnings = lotteryWinnings {
    print(winnings)
}


class Car {
    var model: String?
}

var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model{
//        print(m)
//    }
//}

vehicle = Car()
vehicle?.model = "Bronco"

if let v = vehicle, let m = v.model {
    print(m)
}

//Here's an array of "cars" that is of type optional
var cars: [Car]?

cars = [Car]()

//"," has replaced "where"
if let carArr = cars, carArr.count > 0 {
    //only execute if not nil and if more than 0 elements
} else {
    cars?.append(Car())
    //print(cars?.count ??)
}


//Implicitly unwrapped Optional
//"!" means you are guarenteeing that age with have a value. This could lead to crashes
class Person {
    var age: Int!
    
    func setAge(newAge: Int) {
        self.age = newAge
    }
}

//Initializing properties in a Constructor
class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)


//Object and Classes

