//: ### Automatic Reference Counting
//: * swift uses _automatic reference counting_ (ARC) to manage your apps memory usage
//: * every time you create an instance of a class, ARC _allocates_ a chunk of memory to store information about it (e.g. the type, stored properties, etc)
//: * when an instance is no longer needed, ARC frees up that memory by _deallocation_
//: * ARC tracks how many properties, constants and variables are currently referring to each class instance
//: * ARC will not deallocate an instance so long as one active reference exists
//: * when you assign a class instance to a property, constant or variable, you create a strong reference to it
// init and deinit

class Animal {
  init() {
    print("Initialised a Animal")
  }
  deinit {
    print("Deallocated a Animal")
  }
}

//Animal()

//var reference1: Animal? = Animal()
//reference1 = nil

//var reference1: Animal? = Animal()
//var reference2: Animal? = reference1
//reference1 = nil
//reference2 = nil

/*:
 * callout(strong reference cycle):
 resolving with `weak` and `unowned`
 */
// it’s possible to write code in which an instance of a class never gets to a point where it has zero strong references

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

//teacher?.students.append(student!) // creates a strong reference cycle!

//teacher = nil
//student = nil


/*:
 * callout(strong reference cycles for closures):
 resolving with closure capture lists
 */
class Person {

  lazy var printSelfFunction: () -> () = { //[weak self] in
    print("Person is \(self)")
  }
  
  deinit {
    print("Person has been deallocated")
  }
}

//var person: Person? = Person()
//person!.printSelfFunction()
//person = nil


//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Automatic Reference Counting


