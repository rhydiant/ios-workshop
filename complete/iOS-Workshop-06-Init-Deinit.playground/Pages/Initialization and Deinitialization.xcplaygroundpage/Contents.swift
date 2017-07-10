//: ### Initialization and Deinitialization
/*:
 * callout(initializers):
 using `init`, default initializers, memberwise initializers, designated initializers and convienience initializers, failable initializers (using `init?`)
 */
// default initializer

class Transport {
}
let transport = Transport()


// all stored properties must be initialised before you can use a class/struct/enum
class Trip {
  var description: String
  var arrival: String? // optionals are nil by default
  var travelTime: Int = 0

  init() {
    self.description = ""
  }
}
let trip1 = Trip()


// memberwise initializer (for structs only)
struct Baggage {
  var value: Int
  var unit: String
}
var bags = Baggage(value: 10, unit: "kg")


// failable initializer return nil if initialization fails
class Airport {
  var name: String?

  init?(name: String?) {
    guard name != nil else {
      return nil
    }
  }
}
let airport1 = Airport(name: nil)
print(airport1)
let airport2 = Airport(name: "SYD")
print(airport2)

/*:
 * callout(class inheritance and initialization):
 overriding and `required`
 */
class Flight {
  var departurePort: String
  var arrivalPort: String
  var carrier: String

  // designated init
  init(departurePort: String, arrivalPort: String, carrier: String) {
    self.departurePort = departurePort
    self.arrivalPort = arrivalPort
    self.carrier = carrier
  }
}

class JetstarFlight: Flight {

  // override designated init
  override init(departurePort: String, arrivalPort: String, carrier: String) {
    super.init(departurePort: departurePort, arrivalPort: arrivalPort, carrier: "JetStar")
  }

  // convienince init
  convenience init(departurePort: String, arrivalPort: String) {
    self.init(departurePort: departurePort, arrivalPort: arrivalPort, carrier: "JetStar")
  }

}

let jetstarFlight = JetstarFlight(departurePort: "SYD", arrivalPort: "BNE")


// required initializers

class Hotel {
  var name: String

  init(name: String) {
    self.name = name
  }

//  required init(name: String, location: String) {
//    self.name = "\(name) at \(location)"
//  }

}

class StayzHotel: Hotel {
  override init(name: String) {
    super.init(name: name)
  }
}

let hotal = StayzHotel(name: "Hotel sydney")

/*:
 * callout(deinitializers):
 using `deinit`
 */
class Passenger {
  deinit {
    print("passenger will be deinititalized soon")
  }
}
var passenger: Passenger? = Passenger()
passenger = nil

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Initialization
//: * Deinitialization
