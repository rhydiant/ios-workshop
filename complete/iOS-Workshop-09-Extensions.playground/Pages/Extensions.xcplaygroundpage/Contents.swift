//: ### Extensions
//: * extensions add _new_ functionality to an existing type (typically types you don’t own the source code)
//: * can't override existing functionality, add stored properties, add property observers, add new designated intializers (only convenience initializers)
/*:
 * callout(extension syntax):
 using `extension SomeType`, add computed properties, methods, initializers, subscripts, nested types.
 */
// adding methods

import Foundation

extension String {
  func snakecased() {
    self.lowercased().replacingOccurrences(of: " ", with: "_")
  }
}

"Some random string".snakecased()


// adding (computed) properties

import UIKit

//UIColor.red

extension UIColor {
  static var diusPrimaryColor: UIColor {
    return UIColor(red: 0.4, green: 0.5, blue: 0.9, alpha: 1)
  }
}

UIColor.diusPrimaryColor

//: Up next ...
//: ***
//: Read more in the following sections of _The Swift Programming Language (Swift 3)_
//: * Extensions


