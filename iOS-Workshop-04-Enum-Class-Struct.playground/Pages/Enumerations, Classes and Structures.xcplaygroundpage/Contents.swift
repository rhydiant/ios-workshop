//: ### Enumerations, Classes and Structures
/*:
 * callout(enumerations):
 declaration (single line, multi-line), raw values, associated values (`case(SomeType)`), computed instance properties, stored and computed type properties, instance and type methods, initalizers and subscripts
 */
enum Size {
  case small
  case medium
  case large
  case extraLarge
}

let smallSize = Size.small
let largeSize: Size = .large


// enum with instance method

enum Direction {
  case north, east, south, west

  func displayName() -> String {
    switch self {
    case .north:
      return "Heading north"
    case .east:
      return "Heading east"
    case .west:
      return "Heading west"
    case .south:
      return "Heading south"
    }
  }
}

let direction: Direction = .west
print(direction.displayName())


// raw values

enum CompassDirection: String {
  case north = "North"
  case east = "East"
  case south = "South"
  case west = "West"
}

let direction2 = CompassDirection(rawValue: "East")
print(direction2)


// assiciated values

struct Instrument {
  var label: String
}

enum BandRole {
  case singer
  case lead(Instrument)
  case drums(Instrument)
  case bass(Instrument)
}

let member1: BandRole = .bass(Instrument(label: "the bass"))
let member2: BandRole = .singer
let member3: BandRole = .drums(Instrument(label: "drums"))
let member4: BandRole = .lead(Instrument(label: "guitar"))

switch member3 {
case .singer:
  print("member is the singer")
case .drums(let instrument):
  print("member is on drums \(instrument)")
case .bass:
  print("member is on bass")
case .lead:
  print("member is lead")
}

/*:
 * callout(structures):
 structures (and enumerations) are _value types_ - a type whose value is copied when it is assigned to a variable or constant, or when it is passed to a function
 */
struct Color {
}
let red = Color()

struct Point {
  var x, y: Int
}
let point = Point(x: 10, y: 15)


// value types copied on assignment ...

var pointA = Point(x: 100, y: 200)
var pointB = pointA
print(pointA)
print(pointB)

pointA.x = 80
print(pointA)
print(pointB)

/*:
 * callout(classes):
 classes are _reference types_ - are not copied when they are assigned to a variable or constant, or when they are passed to a function. Unlike structs, a class can inherit methods and properties (`override`, `final` and `super`)
 */
class Person {
  var name: String

  init(name: String) {
    self.name = name
  }
}
let person = Person(name: "Bob")


// reference types are not copied on assignment

var personA = Person(name: "Dave")
var personB = personA
print(personA.name)
print(personB.name)

personB.name = "Jim"
print(personB.name)

print(personA.name) // <- also changed personA because its a reference to the same instance


// inheritance

class Vehicle {
  func move() {
    print("moving!")
  }
}

class Car: Vehicle {
  override func move() {
    print("car moving")
  }
}

class Truck: Vehicle {}

let car = Car()
car.move()

let truck = Truck()
truck.move()

/*:
 * callout(type casting):
 checking with `is` downcast with `as?` and `as!`, `Any` and `AnyObject`
 */
let vehicles: [Vehicle] = [car, truck]

for v in vehicles {
  if v is Car {
    print("its a car")
  }

  if let _ = v as? Car {
    print("no really, its a car")
  }
}

/*:
 * callout(nested types):
  swift enables you to define nested types, whereby you nest supporting enumerations, classes, and structures within the definition of the type they support
 */
// [insert here]






//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Enumerations
//: * Classes and Structures
//: * Inheritance
//: * Type Casting
//: * Nested Types


