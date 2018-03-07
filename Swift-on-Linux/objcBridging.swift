//
//  objcBridging.swift
//
//  Created by Filip Klembara on 3/7/18.
//

import Foundation

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

