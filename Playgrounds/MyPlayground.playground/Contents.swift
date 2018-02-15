//: Playground - noun: a place pwhere people can play
//This is a single line comment
//This should be on the testFeatureBranch
//Crap...I didn't mean to add that

import UIKit



//--------------------- Basics ---------------------
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




//--------------------- Strings ---------------------
//The below example is of type inferance. the variable 'str' has a 'string' type data assigned to it
//You're not explicitely declaring the type. It's infering what type it is
var str = "Hello, playground"


//Explicitely declared type, 'String'
var str2: String = "Hello, playground"

//"let" makes it a constant not a variable. It can't be changed or edited
//something that is able to change is called mutable, based on the word mutate, which just means “to change”.
//Something that is unable to be changed is called immutable
let firstName = "Jason"
let lastName = "Wilson"
var age = 27


//String concatination
//Also called string manipulation
var fullName = firstName + " " + lastName


//String interpolation
//\(variable goes here)
var fullName2 = "\(firstName) \(lastName) is \(age)"

//String interpolation
let herFirstName = "Tara"
let city = "Paris"
let welcomeString = "Hello " + herFirstName + ", welcome to " + city + "!"

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

//Using swift symbols in a string: use \ before the symbol (escape character) followed by a special symbol is called an (escape sequence)
let stringWithQuotationMarks = "He said, \"Hi there!\" as he passed by."

//New line \n
let startOfAPoem = "Roses are red.\nViolets are blue."




//--------------------- numbers ---------------------
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

//-=, += take score add or subtract two and then assign it back to score
//compound assignment operator
var score = 0
score += 2

var greeting = ""
greeting += "Hello"
greeting += " "
greeting += "World"



//--------------------- print & logging ---------------------
//Printing messages to the console is known as logging and the messages are sometimes called log messages.
var userNum1 = 7
var userNum2 = 4

if userNum1 - userNum2 < 0 {
    print("The result is negative")
}
else {
    print("The result is positive")
}



//--------------------- Functions ---------------------
//The idea of taking something complex and defining a simpler way to refer to it is called - abstraction
// {} is considered the body. So the print statements are in the body of the rowTheBoat function
// They often break the single long list down into multiple smaller lists. This is called decomposition
func rowTheBoat() {
    print("Row, row, row your boat")
    print("Gently down the stream")
}


let userName = "Jason"

func sayHiToUser(){
    print("Hello, \(userName)! How's it going today?")
}

func askUser(){
    print("What would you like to do?")
}

func goodMorning(){
        sayHiToUser()
        askUser()
}

goodMorning()




//--------------------- Type --------------------
//trying to assign the wrong type of value to a variable caused an error. In fact, Swift won’t let you write code that uses types incorrectly or unexpectedly. This is called type safety


//When you write a value in code — like 42 or "hello" — it’s known as a literal.
//When Swift uses context clues from code to infer what type something is, it’s called type inference.

//The error Type annotation missing in pattern means that Swift is unable to infer — work out from the available information — the type


//Type annotation - (: Double)
let annotatedDouble: Double = 20


//Types use Upper camel case
//You can create your own “Type”
//(TrainingShoe: it could have: int for shoe size, string for brand name, and date for its release)

//Types and capabilities can be grouped together into collections called frameworks or libraries.
//The Foundation framework introduces lots of types used to represent more specific things than just strings or numbers from the Swift standard library. For example, there are types for dates, distances, and files on a computer.

import Foundation;

let today = Date()




//--------------------- Functions, Parameters, and arguments --------------------
func hello(name: String) {
    print("Hello " + name)
}

hello(name: "Maria")
hello(name: "Vikram")

//when someone uses the function, they can tell the function what the value of the name parameter should be. This is called passing in a value. The value you pass in to the function is called the argument.


func helloThere(firstName: String, lastName: String) {
    print("Hello \(firstName) \(lastName)")
}

helloThere(firstName: "Jason", lastName: "Wilson")


func printFavorite(categoryOfThing: String, favorite: String){
    print("My favorite \(categoryOfThing) \(favorite)")
}

printFavorite(categoryOfThing: "Food", favorite: "Pizza")

//Passing a value back when a function is finished is called returning a value
//Your function can have multiple parameters, but it can only return one value.
func spaceAvailableMessage(eachVideoDuration: Int, numberOfVideos: Int) -> String {
    let currentSpace = 10000
    let megabytesPerVideoSecond = 3
    let spaceAvailable = currentSpace - eachVideoDuration * numberOfVideos * megabytesPerVideoSecond
    
    return "If your \(numberOfVideos) videos are \(eachVideoDuration) seconds each, you'll have \(spaceAvailable) MBs remaining"
}
spaceAvailableMessage(eachVideoDuration: 10, numberOfVideos: 50)


func yourFavoriteThing(favoriteTopic: String, favoriteItem: String)->String{
    return "Your favorite thing \(favoriteTopic) is: \(favoriteItem)"
}

yourFavoriteThing(favoriteTopic: "Food", favoriteItem: "Pizza")


//Taking it to the next level
func makeFavorite(categoryOfThing: String, favorite: String)->String{
    return "My favorite \(categoryOfThing) is \(favorite)"
}

let favoriteFood = makeFavorite(categoryOfThing: "Food", favorite: "cheese")
let favoriteMovie = makeFavorite(categoryOfThing: "Movie", favorite: "Hot Rod")
let favoriteSport = makeFavorite(categoryOfThing: "Sport", favorite: "Basketball")

print("Hello, my name is Jason. \(favoriteFood) \(favoriteMovie) \(favoriteSport)")

//When you name a function, it’s good to somehow include the side effect in the name, like leftArmUp(). If a function has no return value, all of its work is considered a side effect.


func printHello(to: String) {
    print ("Hello " + to)
}
printHello(to: "Maya")


//The names used inside the function (the values that have been received) are parameter names.
//In fact, there are better words for these two names. The names you see when calling a function (and passing in one or more arguments) are called argument labels.

//func funcName(-argumentLabel-  -parameterName-: valueGoesHere){
//    function logic goes here
//}
//funcName(argumentLabel: value)

//You can just pass in the value for a function by having a ‘_’ for the functions argumentLabel

//Functions and their arguments should be named so that they read like a clear instruction when they’re called. To make this easier, you can give parameters two names - an argument label to be used when calling the function and a parameter name to be used within the function’s body.

//To write a function that can be called with an argument only, you use _ where you'd normally specify the argument label.



func holler(_ phrase: String) -> String {
    return "⚡️\(phrase)!!⚡️"
}

print(holler("Thank you, this is very nice."))
print(holler("I'm not sure that was necessary."))





//--------------------- Comparison Operators & If Else Statements --------------------

//Booleans: true / false
//
//Comparison statements (end in a true or false)
//
//Comparison operators:
//+, ==, -, *, /, <, >, <=, >=, !=, ||, %
//
//If
//Else if
//Else



func bandCanCarryGear(bandMemberCount: Int, gearWeight: Int) -> Bool {
    let maximumTripCount = 2
    let weightPerPerson = 50
    let carryingCapacity = bandMemberCount * weightPerPerson * maximumTripCount

    return gearWeight < carryingCapacity
}

//: This approach hides the complexity of what’s happening in the function. Functions that return a `Bool` can be used directly in an if statement, like this:

if bandCanCarryGear(bandMemberCount: 5, gearWeight: 600) {
    "Rock on."
} else {
    "Everyone quits! Looks like you've got a solo show"
}

let bandMemberCount = 6
let candyCount = 79

func isCandyAmountAcceptable(bandMemberCount: Int, candyCount: Int) -> Bool {
    return candyCount % bandMemberCount == 0
}


if isCandyAmountAcceptable(bandMemberCount: bandMemberCount, candyCount: candyCount) {
    "Rock on."
} else {
    "Everyone quits! This is unacceptable!"
}



//--------------------- APIs --------------------
//An API is a specific set of functionality that can be used by a software developer to accomplish a task.
//When you develop an algorithm, you’re defining a series of steps to be performed. Any self-contained step-by-step series of operations is an algorithm.





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

