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




//--------------------- Instances and Types --------------------

//In programming, you can create and use different instances of a given type. Each instance has its own set of property values, and each instance can perform behavior independent of other instances.

//String is a type
//"hello" is an instance of a String.
//‘Howdy!’ is an instance of ‘literalSting’ of Type String

let literalString = "Howdy!"
let literalBool = false
let literalInt = 84


//Date initializer
let rightNow = Date()

//Date() looks a lot like a function, but with an important difference: It uses a type name instead of a name beginning with a lowercase letter. This is an example of an initializer. You use an initializer to create a new instance of a particular type.

//This is an example of an initializer. You use an initializer to create a new instance of a particular type. Only a few types, like String, Bool, and Int, can be created using literals, but every type has at least one initializer.

//Even types you’ve been creating using literals have initializers:
//Initializers can have parameters that you pass through it

//String initializer
let emptyString = String()

//Boolean initializer
let falseBool = Bool()

//Int initializer
let zero = Int()


//Initializers and functions are similar in some ways:

//They can have parameters or no parameters at all.

//You call them the same way, by passing in required argument values.

//But they also have differences:

//You use the name of the type when calling an initializer

//An initializer returns a new instance of its type




//--------------------- Methods --------------------

//Functions can be defined as part of a type. These functions are called instance methods, or just methods. String has many instance methods, which are used for common operations.

//Instance methods are called by using a period (.) after the instance, followed by the method call:


let introduction = "It was a dark and stormy night"

introduction.hasPrefix("It was")
introduction.hasPrefix("It wasn't")


//This is known as calling a method on the instance. You’ve called hasPrefix() on introduction.
//hasPrefix is a String instance method, so you can’t use it without an instance.

//You also can’t use an instance method on an instance of the wrong type. You can only use methods that are part of, or members of, a particular type.




//--------------------- Properties --------------------

//Each instance has one or more pieces of associated information. These values are known as properties.

//The property is declared like this:
//var isEmpty: Bool{ get }


//The property is named isEmpty and is of type Bool. It is marked var because the property value could change if the string contents change.

//The { get } indicates you can only get the value of this property, but you can’t set it. This is also called a read-only property.

//Properties are called by using a period (.) after the instance, followed by the property name:


let something = "It was the best of times"
something.isEmpty


let nothing = ""
nothing.isEmpty

//You can’t use a property without an instance.
//You can only use properties that are part of the type of the instance.





//--------------------- Properties vs. Methods --------------------

//A variable is useful for referring to a value that you can access when required. Similarly, a property provides a way for getting or setting values from an instance. Each instance can have a different value for that property.

//A function is useful for providing behavior that can be repeated as needed. A method works in the same way, providing behavior specific to that instance.

//If the work has side effects, things that happen that aren't related to the return value, then it’s a method.





//--------------------- APIs --------------------

//An API is a specific set of functionality that can be used by a software developer to accomplish a task.
//When you develop an algorithm, you’re defining a series of steps to be performed. Any self-contained step-by-step series of operations is an algorithm.

//The instance methods and properties of a String are the API of the String type.

var example = "It was the best of times"

// Practice here by typing . after "example":
example.hasSuffix("times")
example.hasPrefix("It was")

example.isEmpty
example
example.removeAll()
example







//--------------------- Arrays --------------------

//Array literal 'let'
//Arrays can house any kind of type
//Since this array is defined using let, both the items and the order of the items will never change
let devices = ["iPhone", "iPad", "iPod", "iMac"]
devices[0]
let favoriteDevice = devices[0]

//This array is a collection of chores instances
let chores = ["Vacumming","Dusting","Laundry","Feed the Dragon"]
let minutesPerChore = 10
let numberOfChores = chores.count

let choresTime = numberOfChores * minutesPerChore


//Using an array with a func
let friends = ["name1","name2","name3","name4"]

func inviteFriends(_ friend: String){
    print("Hey, \(friend), please come to my party on Friday!")
}

inviteFriends(friends[0])
inviteFriends(friends[1])
inviteFriends(friends[2])


//To run items in an array you can use a For-In loop
//It runs in order from index 0 - until the end of the array
for friend in friends {
    print("Hey, \(friend), please come to my party on Friday!")
}
print("Done! All your friends are invited.")

//The first line sets up the loop with two important pieces of information:
//1. 'In' which collection to work through (in this case, friends).
//2. What to call the item being worked with (in this case, friend). You could say in English, “For every friend in the friends collection...”


//var arrays (mutable arrays) can be changed whenever, but the type can't change
var transitOptions = ["walk", "bus", "bike", "drive"]
transitOptions = ["rowboat", "paddle board", "submarine"]

//To create a mutable empty array that will hold strings, do this:
//a type followed by parentheses is how you create an instance of that type
var list = [String]()

//Three ways to add to an mutable array
//append adds the item to the end of the array
//insert just addes the item and doesn't overwrite
//+= just adds the items to the end of the array
list.append("Banana")
list.insert("Apple", at: 1)
list += ["Cherry", "Grapes","Watermelon"]


//Removing items from an array
var numbers = [0,1,2,3,4]

//The 'remove' method returns the number that you removed
let someNumbers = numbers.remove(at: 2)
numbers

//RemoveFirst method removes and returns the frist number in the array 'at index 0'
let firstNumber = numbers.removeFirst()
numbers

//RemoveLast method removes and returns the last number in the array
let lastNumber = numbers.removeLast()
numbers

//Chaning one index
//the [] is called a subscript
numbers[0] = 99
numbers

//Remove all items from an array
numbers.removeAll()
numbers

let shouldMascotChangeVotes: [Bool] = [false, false, false, true, false, true, true, true, false, true, true, true, true, false, true, true, false, true, true, true, false, true, true, true, true, true, true, true, false, true, false, true, false, true, true, false, false, true, true, false, false, true, true, true, false, true, false, true, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, false, true, true, true, false, true, true, false, false, true, false, true, true, false, false, false, true, false, true, true, false, true, true, true, true, true, true, true, false, true, false, true, false, true, true, true, true, true, true, true, false, true, true, false, true, true, true, true, true, true, true, false, true, true, false, true, true, false, true, true, true, true, true, false, false, false, false, true, true, true, false, true, true, false, false, true, false, false, true, true, true, true, false, true, true, true, true, false, true, true, false, true, false, false, true, true, false, true, false, false, false, true, false, false, false, true, false, true, true, false, true, true, false, true, true, true, false, false, false, true, false, true, false, true, true, true, true, false, true, false, false, true, true, true, true, true, false]

var yesVotes = 0
var noVotes = 0

// Add your vote-processing function here:
func voteFunc (forIssue: String, withVotes: [Bool]){
    for vote in shouldMascotChangeVotes{
        if vote == true {
            yesVotes += 1
        }
        else {
            noVotes += 1
        }
    }
    print("Here's the toal for: \(forIssue) - Yes: \(yesVotes) and No: \(noVotes)")
}

voteFunc(forIssue: "Should we change the mascot?", withVotes: shouldMascotChangeVotes)




//--------------------- Structures --------------------

//In general, the types of data that an app deals with are known collectively as its model, or sometimes more verbosely, its data model.
//One way to create a new type in Swift is to define a structure, often called a struct.  A struct is a simple way of grouping values of other types together.


//A 'song' struct. It's a new type called 'Song' with three properties: title, artist, duration (All constants (let) and with type annotation)
//structs should start with a Capitalized letter. Property names should be lowercase
//To make the 'Song' struct mutable, you can make the properiteis var instead of let
struct Song {
    let title: String
    let artist: String
    let duration: Int
    var rating: Int
}

var song1 = Song(title: "No, no, no", artist: "Fizz", duration: 150, rating: 0)

//Need to specify every property that you declar in a struct when you create an instance of it, or an error will be thrown (remove rating)
//To make the instance song1 of Type Song mutable, you can make it var instead of let. That way, you can change the properities that it has assigned to it
//Remember from the Instances lesson that every type has at least one initializer. When you declare a struct, an initializer is automatically created for you. Because this initializer has a parameter for each member property in the struct, it is called a memberwise initializer.
//In the example above, song1 is an instance of Song, and Song is the type. Each property can be accessed like this:

song1.title
song1.artist
song1.duration
song1.rating
song1.rating = 4


//A struct with a 'Calculated Property'
//A calculated property is declared as a var, since it could change depending on the rest of the struct
//The calculation of 'formattedDuration' has to return with Type 'String' since the 'Type Annotation' was set to String
//Within the code of a struct, you can access its own properties directly by their names, without using the dot. (e.g. duration in formattedDuration)
struct Movie {
    let title: String
    let director: String
    let duration: Int
    
    var formattedDuration: String {
        let hours = duration / 60
        let minutes = duration % 60
        return "\(hours)h \(minutes)m"
    }
}

let movie1 = Movie(title: "Hot Rod", director: "Jason Wilson", duration: 164)
movie1.formattedDuration


//Creating a function that uses the struct and it's properties
//Creating a function inside a struct
struct Rectangle {
    let width: Int
    let height: Int
    
    func biggerThan(_ rectangle: Rectangle) -> Bool {
        let areaOne = width * height
        let areaTwo = rectangle.height * rectangle.width
        return areaOne > areaTwo
    }
}

let rectangle1 = Rectangle(width: 10, height: 10)
let rectangle2 = Rectangle(width: 10, height: 30)

rectangle1.biggerThan(rectangle2)
rectangle2.biggerThan(rectangle1)








//--------------------- Loops --------------------





var salaries = [30000.0, 40000.0, 50000.0, 60000.0]
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

