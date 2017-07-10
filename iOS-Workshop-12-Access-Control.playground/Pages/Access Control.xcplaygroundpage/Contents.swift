//: ### Access Control
/*:
 * callout(open access and public):
 using `open` and `public`
 */
// visible outside of the target and open for subclassing
open class MyClassOpenForSubclassing {}

// visible outside of the target but not subclassable
public func myFuncPublicOutsideOfATarget() {}

/*:
 * callout(internal access):
 using `internal` (the default)
 */
// visible to all types in the same target
internal func myInternalFunc() {}
func myOtherInternalFunc() {}

/*:
 * callout(private access):
 using `fileprivate` or `private`
 */
// visible to other types withint the same file
fileprivate struct MyFilePrivateStruct {}

// visible only to the scope within which it is defined
private struct MyPrivateStruct {}

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Access Control


