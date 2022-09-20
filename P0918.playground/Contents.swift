import UIKit


///
/// Closure with Collection Type
///
let prices = [1000, 2000, 3000]
let doublePrices = prices.map { price in
    return price * 2
}

print(doublePrices)


let revenues = [100, 200, 300]
let totalRevenue = revenues.reduce(0) { partialResult, next in
    return partialResult + next
}
print(totalRevenue)


struct Album {
    let title: String
    let artist: String
    var isReleased = false
    
    func description() -> String {
        return "\(title) by \(artist)"
    }
    
    mutating func release() {
        self.isReleased = true
    }
}

var easyOnMe = Album(title: "Easy On Me", artist: "Adele")
print(easyOnMe.description())


print(easyOnMe.isReleased)
easyOnMe.release()
print(easyOnMe.isReleased)

///
/// Class
///


class Employee {
    var name: String
    var hours: Int
    
    init(name: String, hours: Int) {
        self.name = name
        self.hours = hours
    }
    
    func work() {
        print("I'm working now...")
    }
    
    func summary() {
        print("I wokr \(self.hours) hours a day.")
    }
}

class iOSDeveloper: Employee {
    
    override func work() {
        print("I'm developing iOS app now.")
    }
    
    override func summary() {
        print("I wokr \(self.hours/2) hours a day.")
    }
}

struct Phone {
    var modelName: String
    var manufacturer: String
    var version: Double = 1.0
}

let normalworker = Employee(name:   "Kime", hours: 8)
normalworker.work()
normalworker.summary()

let developer = iOSDeveloper(name: "Jason", hours: 8)
developer.work()
developer.summary()

var iPhone1 = Phone(modelName: "iPhone 13", manufacturer: "Apple")
var iPhone2 = iPhone1

iPhone2.modelName = "iPhone 14"

print(iPhone2.modelName)
print(iPhone1.modelName)

var jrDeveloper1 = iOSDeveloper(name: "Dgun", hours: 8)
var jrDeveloper2 = jrDeveloper1
jrDeveloper1.name = "Billy"

print(jrDeveloper2.name)
print(jrDeveloper1.name)


///
/// Stored property vs. computed property
///

struct Watch {
    let model: String
    let manufacturer: String

    var description: String {
        return "\(model) by \(manufacturer)"
    }
}

struct Person {
    let firstName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

let appleWatch = Watch(model: "Watch 8", manufacturer: "Apple")
print(appleWatch.description)

let Dgun = Person(firstName: "D", lastName: "gun")
print(Dgun.fullName)

