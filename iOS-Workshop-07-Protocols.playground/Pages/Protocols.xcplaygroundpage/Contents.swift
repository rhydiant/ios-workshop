//: ### Protocols
//: * a protocol defines requirements a conforming type agrees to implement
/*:
 * callout(define a protocol):
 with instance properties, instance methods and type methods, subscripts, operators and initializers
 */
// property requirement
protocol HasTitle {
  var title: String { get }
}

// instance method requirement
protocol Runnable {
  func run(for duration: Int) -> Bool
}

// initializer requirement
protocol Labeled {
  init(label: String)
}

/*:
 * callout(conform to a protocol):
 with a class, struct or enumeration
 */
struct Person: HasTitle, Runnable, Labeled {
  var label: String
  var title: String

  init(label: String) {
    self.label = label
    self.title = ""
  }

  func run(for duration: Int) -> Bool {
    return true
  }
}

struct Title: CustomStringConvertible {
  var description: String {
    return "some title desc"
  }
}
let title = Title()
print(title)

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Protocols
