//: ### Functions and Closures
/*:
 * callout(definition, parameters and return values):
 define and call a function, using argument labels and parameter names, default parameters and variadic parameters (`param: Int = 1` and `param: Double ...`), in-out parameters
 */
// declare a function


// argument labels and parameter names


// return values


// default parameters


// variadic parameters


// in-out paramters

/*:
 * callout(function types):
 every function has a specific function type, made up of the parameter types and the return type of the function
 */
// function type consists of the parameter and return type of the function


// function types (just like any other type in Swift) can be assigned as variables and constants


// function types can be passed as parameters to other functions


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

// using closure expression syntax

// using type inference

// using implicit return

// using shorthand argument names ($0)

// using operator functions (because operators are functions in swifuncgit ft)


/*:
 * callout(trailing closure syntax):
 example
 */


//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Functions
//: * Closures
