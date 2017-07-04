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


/*:
 * callout(strong reference cycles for closures):
 resolving with closure capture lists
 */


//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Automatic Reference Counting


