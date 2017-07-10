//: ### Functions and Closures
/*:
 * callout(definition, parameters and return values):
 define and call a function, using argument labels and parameter names, default parameters and variadic parameters (`param: Int = 1` and `param: Double ...`), in-out parameters
 */
func sayHello() {
  print("hello")
}
print(sayHello())


// argument labels and parameter names

func sayHello(to name: String) { // with argument label and parameter name
  print("hello \(name)")
}
sayHello(to: "Tom")

func greet(_ name: String) { // ignore the argument label
  print("hello \(name)")
}
greet("Tom")

func sayHelloTo(name: String) { // without parameter name (defaults to use the argument label)
  print("hello \(name)")
}
sayHelloTo(name: "Dave")


// return values

func didFinish() -> Bool {
  return true
}

func didFinishWithResult() -> (Bool, Float) {
  return (true, 28.7)
}


// default parameters

func displayScore(score: Int, animated: Bool = false) {
  print("displaying score \(score) animated \(animated)")
}
print(displayScore(score: 23))
print(displayScore(score: 40, animated: true))


// variadic parameters

func sumScores(scores: Int ...) -> Int {
  var total = 0
  for n in scores {
    total += n
  }
  return total
}
print(sumScores(scores: 10, 15, 25))


// in-out parameters

func appendToPlayerName(name: inout String, value: String) {
  name.append(" \(value)")
}

var playerName = "james"
appendToPlayerName(name: &playerName, value: "jones")
print(playerName)

/*:
 * callout(function types):
 every function has a specific function type, made up of the parameter types and the return type of the function
 */
// function type consists of the parameter and return type of the function
func myFunc(a :Int) -> Int {
  return 0
}
// has a function type of (Int) -> Int

func anotherFunc() {
}
// has a function type of () -> ()

// function types (just like any other type in Swift) can be assigned as variables and constants
var foo: (Int) -> Int

// function types can be passed as parameters to other functions
func myfunc(a: (Int, Int) -> Int, b: Int) {

}

//: ### Closures
//: * self-contained blocks of functionality that can be passed around and used in your code
//: * closures _capture_ their surrounding variables and constants, swift manages memory
/*:
 * callout(closure syntax):
 example
 */
let anArray = [3, 2, 5, 1, 6]

// to sort this array, lets use array.sorted(), which sorts the array using a closure to define the sort operation

// the long way ...
func sortFunction(i1: Int, i2: Int) -> Bool {
  return i1 < i2
}
let result = anArray.sorted(by: sortFunction)

// using closure expression syntax
let result2 = anArray.sorted(by: {(i1: Int, i2: Int) -> Bool in return i1 < i2})
print(result2)

// using type inference
let result3 = anArray.sorted(by: {(i1, i2) in return i1 < i2})
print(result3)

// using implicit return
let result4 = anArray.sorted(by: {(i1, i2) in i1 < i2})
print(result4)

// using shorthand argument names ($0)
let result5 = anArray.sorted(by: {$0 < $1})
print(result5)

// using operator functions (because operators are functions in swifuncgit ft)
let result6 = anArray.sorted(by: <)
print(result6)

/*:
 * callout(trailing closure syntax):
 example
 */
let result7 = anArray.filter { num -> Bool in
  num > 3
}
print(result7)

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Functions
//: * Closures
