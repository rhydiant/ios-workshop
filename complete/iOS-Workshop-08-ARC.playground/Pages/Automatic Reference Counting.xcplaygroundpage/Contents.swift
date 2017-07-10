//: ### Automatic Reference Counting
//: * swift uses _automatic reference counting_ (ARC) to manage your apps memory usage
//: * every time you create an instance of a class, ARC _allocates_ a chunk of memory to store information about it (e.g. the type, stored properties, etc)
//: * when an instance is no longer needed, ARC frees up that memory by _deallocation_
//: * ARC tracks how many properties, constants and variables are currently referring to each class instance
//: * ARC will not deallocate an instance so long as one active reference exists
//: * when you assign a class instance to a property, constant or variable, you create a strong reference to it

/*:
 * callout(strong reference cycle):
 resolving with `weak` and `unowned`
 */
// break strong reference cycle with unowned

class Teacher {
  var students = [Student]()

  deinit {
    print("Teacher will be deallocated")
  }
}

class Student {
  var teacher: Teacher

  init(teacher: Teacher) {
    self.teacher = teacher
  }

  deinit {
    print("Student will be deallocated")
  }
}

var teacher: Teacher? = Teacher()
var student: Student? = Student(teacher: teacher!)
//teacher?.students.append(student!)

teacher = nil
student = nil


// break strong reference cycle with weak

class Band {
  var drummer: Drummer

  init(drummer: Drummer) {
    self.drummer = drummer
  }

  deinit {
    print("band has been deinitialised")
  }
}

class Drummer {
  var band: Band?

  deinit {
    print("drummer has been deinitialised")
  }
}

var drummer: Drummer? = Drummer()
var band: Band? = Band(drummer: drummer!)
//drummer?.band = band

band = nil
drummer = nil

/*:
 * callout(strong reference cycles for closures):
 resolving with closure capture lists
 */
// break strong reference cycle in closure

class Person {

  lazy var printSelfFunction: () -> () = {
    // [unowned self] in
    print("Person is \(self)")
  }

  deinit {
    print("Person has been deinitialised")
  }
}

var person: Person? = Person()
//person!.printSelfFunction
person = nil

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Automatic Reference Counting


