//: Playground - noun: a place where people can play

import UIKit

//class
//A "Vehicle" has multiple properites and functions
//Defined the class. Need to create an instance of it
class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        //Accelerate the vehicle
    }
    
    func brake() {
        //Stop the vehicle
    }
}

//Creates a "bmw" Vehicle instance and assigns a model to it
//Instantiating an instance of the Vehicle class
//Once you instantiate them they become an Object
let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"

print(ford.model)

func passByReference(vehicle: Vehicle){
    vehicle.model = "Cheese"
}

//Pass by reference
//Reference objects
passByReference(vehicle: ford)

print(ford.model)



var someonesAge = 30
//Can't change the value because it's a constant

func passByValue(age: Int) {
    age = 10
}

//Won't work
//passByValue(age: someonesAge)


