//: ### Generics
/*:
 * callout(generic functions):
 create functions that work with any type
 */
// a swap Int function

func swap(a: inout Int, b: inout Int) {
  let temp = a
  a = b
  b = temp
}

var a = 10
var b = 20

swap(a: &a, b: &b)
print("a: \(a) b : \(b)")


// a swap any type function

func swapAny<T>(a: inout T, b: inout T) {
  let temp = a
  a = b
  b = temp
}

// with strings
var c = "c"
var d = "d"
swapAny(a: &c, b: &d)
print("a: \(c) b : \(d)")

// with bool
var e = true
var f = false
swapAny(a: &e, b: &f)
print("a: \(e) b : \(f)")

/*:
 * callout(generic types):
 create types that work with collections of any type
 */
// a stack of strings

struct Stack {
  var items = [String]()

  mutating func push(item: String) {
    items.insert(item, at: 0)
  }

  mutating func pop() {
    guard items.count > 0 else {
      return
    }
    items.remove(at: 0)
  }
}

var stack = Stack()
stack.push(item: "item 1")
stack.push(item: "item 2")
stack.push(item: "item 3")
print(stack)

stack.pop()
print(stack)


// a stack of any type

struct GenericStack<T> {
  var items = [T]()

  mutating func push(item: T) {
    items.insert(item, at: 0)
  }

  mutating func pop() {
    guard items.count > 0 else {
      return
    }
    items.remove(at: 0)
  }
}

var aStackOfStrings = GenericStack<String>()
aStackOfStrings.push(item: "item 1")
aStackOfStrings.push(item: "item 2")
aStackOfStrings.push(item: "item 3")
print(aStackOfStrings)

aStackOfStrings.pop()
print(aStackOfStrings)

var aStackOfInts = GenericStack<Int>()
aStackOfInts.push(item: 1)
aStackOfInts.push(item: 2)
aStackOfInts.push(item: 3)
print(aStackOfInts)

aStackOfInts.pop()
print(aStackOfInts)

var aStackOfAny = GenericStack<Any>()
aStackOfAny.push(item: 1)
aStackOfAny.push(item: "item 2")
aStackOfAny.push(item: 3)
print(aStackOfAny)

aStackOfAny.pop()
print(aStackOfAny)

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Generics


