//: ### Error Handling
/*:
 * callout(error types and throwing errors):
 using `throw` and the `Error` protocol, error handling by propagation (using `throws`), error handling with do-catch, error handling by converting to optionals (`try?`), disable error propagation (`try!`)
 */
enum NetworkError: Error {
  case connectionError
  case timeoutError
  case serverError
}

func myThrowingFunction() throws {
  // ...
  // throw NetworkError.serverError
}

do {
  try myThrowingFunction()
} catch {
  print("error with generated value \(error)")
}

do {
  try myThrowingFunction()
} catch NetworkError.connectionError {
  print("connection error")
} catch {
  print("some other \(error)")
}


// convertion to optionals and opting out of error propagation

func myThrowingFunctionWithReturnValue(forceThrow: Bool) throws -> String {
  if forceThrow {
    throw NetworkError.connectionError
  }

  return "done"
}

let result1 = try? myThrowingFunctionWithReturnValue(forceThrow: true)
print(result1)

let result2 = try? myThrowingFunctionWithReturnValue(forceThrow: false)
print(result2)

// when it makes sense to runtime error
let result3 = try! myThrowingFunctionWithReturnValue(forceThrow: false)

/*:
 * callout(cleanup actions):
 using `defer`
 */
func myFuncWithDefer() {
  defer {
    print("do something in defer block!")
  }
  print("done with myFuncWithDefer")
}

myFuncWithDefer()


func myThrowingFuncWithDefer() throws {
  defer {
    print("do some cleanup")
  }
  print("about to throw")
  throw NetworkError.timeoutError
}

do {
  try myThrowingFuncWithDefer()
} catch {
  print("handle myThrowingFuncWithDefer error")
}

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Error Handling


