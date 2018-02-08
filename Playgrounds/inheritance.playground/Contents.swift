//: Playground - noun: a place where people can play

import UIKit

//Inheritance is a principle of Ocject Oriented programming
//----Vehicle Class----
class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        print("I am the parent class")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}


//Creating a subclass
//SportsCar inherits from type "Vehicle"
//You can still access the properties from the parent class
//----SprortsCar----
class SportsCar: Vehicle {
    
    override init() {
        super.init()
        print("I am the child class")
        make = "BMW"
        model = "3 series"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
}

let car = SportsCar()


//----Truck-----
class Truck: Vehicle {
    override init() {
        super.init()
        make = "Ford"
        model = "F150"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 1.5
    }
}

//Grabs the "print()" from the parent class
let car2 = Truck()
