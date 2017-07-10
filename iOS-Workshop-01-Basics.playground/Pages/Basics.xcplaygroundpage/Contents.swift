//: ### Basics
/*:
 * callout(variables and constants):
 using `var` and `let`, type annotations and type inference, basic types `Int, Float, Double, Bool, String`, tuples and type aliases
 */
// variables and constants

var hello = "hello"
hello.append(" mate") // variables are mutable
print(hello)

let welcome = "welcome"
//welcome.append(" mate") // constants are immutable

// type inference

var age: Int = 21 // swift is strongly typed
var state: Bool   // declare a variable 'of type' Bool
var status: Bool = true  // true or false values for boolean

var anotherState = true // swift can figure out the type most of the time inference

// tuples - group types, e.g. to return multiple values from a function

var response = (200, "Success") // a tuple groups values
print(response.0)
print(response.1)

var anotherResponse = (code: 200, label: "Success")
print(anotherResponse.code)
print(anotherResponse.label)

var playerScore: (score: Int, firstName: String, surname: String)
playerScore = (10, "Ricky", "Jones")
print(playerScore)

// type alias - e.g. improve readability of your code

typealias IPOctet = UInt8

let minOctetValue = IPOctet.min
let maxOctetValue = IPOctet.max // Option-click to see what the type is an alias of

/*:
 * callout(collection types):
 arrays (ordered collections of values), sets (unordered collections of unique values) and dictionaries (unordered collections of key-value associations)
 */
// declaring arrays

var quizScores: [Int] = [10, 15, 21 , 36, 13]
//var quizScores = [10, 15, 21 , 36, 13]

var playerNames: [String]
playerNames = ["Dave", "Mick", "Tom"]

var emptyArray = [String]()

var anotherArray = Array<Bool>() // arrays are actually generic structs (command-click)

// accessing arrays

quizScores.count

quizScores.contains(15)

quizScores.isEmpty

quizScores.sorted() // not mutating
quizScores.sort() // mutating!

quizScores[3]

quizScores[0...2]

quizScores.append(28) // option-click to view docs

// dictionaries

var stockPrices: [String : Double] = ["AAPL": 110.34, "GOOG": 120.21, "QCOM": 10.8]

// keys must conform to Hashable protocol (more on protocols later)

stockPrices.count

stockPrices.isEmpty

stockPrices.keys

stockPrices.values.first

print(stockPrices["AAPL"]) // more on optionals later

stockPrices["QCOM"] = nil
print(stockPrices)

// sets - no shorthand syntax, must explicitly use 'Set'

var teachers = Set<String>()
teachers = ["Clair", "Peter"]

var students: Set<String> = ["Dave", "Chris", "Dave"] // duplicate removed

students.count

students.isEmpty

students.union(teachers)

students.isSubset(of: teachers)
/*:
 * callout(control flow):
 loops (`for-in`, `while` and `repeat-while`), conditional statements (`if`, `if-else` and `switch`) control transfer labels (`continue`, `break`, `fallthrough`, `return` and `throw`), early exit (`guard-else`), checking API availability (`if #available`)
 */
// for-in

for i in 0..<10 {
  print(i)
}

for _ in 0..<5 {
  print("hello")
}

for i in (0..<10).reversed() {
  print(i)
}

for c in "hello".characters {
  print(c)
}

// additional contraints with 'where' clause

for word in ["jump", "bump", "apple", "pump"] where word.hasSuffix("ump") {
  print(word)
}

// while and reapeat-while

var doneWhileLoop = false
while !doneWhileLoop {
  doneWhileLoop = true
}

var doneWhileRepeatLoop = false
repeat {
  doneWhileRepeatLoop = true
} while !doneWhileRepeatLoop

// if if-else

if doneWhileLoop {
  print("all done")
} else {
  // not done
}

if doneWhileLoop {
  // ...
} else if doneWhileRepeatLoop {
  // ...
}

// guard clause - simualr to if, but more expressive

let namesAndAges = ["James": 21, "Paul": 16, "Peter": 17, "Clair": 26]

for (name, age) in namesAndAges {
  guard age > 18 else {
    continue // must be a control transfer statement - continue, break, return, throw ...
  }
  print("\(name) is \(age)")
}

// switch

let newScore = 71

switch newScore {
case (0..<5):
  fallthrough
case (5..<10):
  print("Pretty lame")
case (10..<50):
  print("Good attempt")
case (50..<100) where newScore == 70:
  print("Magic score")
case (50..<110):
  print("Great!")
default:
  print("High score!")
}
/*:
 * callout(operators):
 assignment operator (`=`), arithemic operators (`+` `-` `*` `/`), remainder operator (`%`), unary and compound assignment operators (`-foo` `+bar` `+=` `-=`), comparison operators (`==` `!=` `>` `<` `>=` `<=`), ternary conditional operator (`a ? b : c`), range operators (`a...b` `a..<b`), logical operators (`&&` `||`, `!foo`)
 */
let a = 0..<10 // half open range operator (start to end, exlcuding end value)

let b = 0...10 // closed rane operator (start to end inclusive of last element)

/*:
 * callout(comments):
 single line, multi line
 */
// single line

/*
 multi-line
 */

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * The Basics
//: * Strings and Characters
//: * Basic Operators
//: * Control Flow
//: * Collection Types
