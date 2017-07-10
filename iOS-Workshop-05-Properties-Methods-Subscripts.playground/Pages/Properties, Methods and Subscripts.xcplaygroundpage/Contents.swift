//: ### Properties, Methods and Subscripts
/*:
 * callout(properties):
 stored instance and type properties, lazy stored, computed properties, property observers using `willSet` and `didSet`
 */
struct SomeTypeThatsExpensiveToCreate {
  init() {
    print("just created SomeTypeThatsExpensiveToCreate")
  }
}

struct Magazine {
  // stored (type) property
  static let code = "XYZ"

  // stored (instance) property
  var title: String {
    willSet {
      print("will change the title from \(title) to \(newValue)")
    }
    didSet {
      print("just changed the title to \(title)")
    }
  }

  // lazy stored property
  lazy var price = SomeTypeThatsExpensiveToCreate()

  // computed properties
  var description: String {
    get {
      return "\(title) Magazine"
    }
    set {
      print("could set something based on \(newValue)")
    }
  }

  init(title: String) {
    self.title = title
  }
}

print(Magazine.code)

var mag = Magazine(title: "Surfing World")
print(mag.title)

mag.title = "Surfer"

mag.price

mag.description

mag.description = "Surfing"

/*:
 * callout(methods):
 instance methods, type methods using `static` and `class`
 */
class Player {

  // instance method
  func moveTo(position: Int) {
  }

  // type method (you cant override)
  static func getAllPlayers() -> [Player] {
    return [Player]()
  }

  // type method (you can override)
  class func getPlayersWithName(name: String) -> [Player] {
    return [Player]()
  }

}

class JuniorPlayer: Player {
//  override static func getAllPlayers() -> [Player] {
//    return [Player]()
//  }

  override class func getPlayersWithName(name: String) -> [Player] {
    return [Player]()
  }
}

/*:
 * callout(subscripts):
 shortcuts for accessing the member elements of a collection using `subscript(index: Int) -> Int`
 */
struct Trip {
  var title: String
  var stops: [String]

  subscript (index: Int) -> String {
    return stops[index]
  }
}

var trip = Trip(title: "Summer trip", stops: ["Sydney", "Dubai", "London", "Paris"])
trip[0]
trip[1]

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Properties
//: * Methods
//: * Subscripts


