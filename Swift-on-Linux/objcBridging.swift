import Foundation

#if os(Linux)
    print("Linux does not support auto bridging")
    print("You need to explicitly convert with:")
    print("\tNSString(string:)")
    print("\tString(describing:)")
#endif
let someNSString: NSString = "Hello!"

// On linux use String(describing:) or <variable>.description
// let someString = String(describing: someNSString)
// or
// let someString = someNSString.description
let someString = someNSString as String

// On linux use NSString(string:)
// let anotherNSString = NSString(string: someString)
let anotherNSString = someString as NSString

print(anotherNSString)

