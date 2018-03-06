import Foundation

// Set path to file
let path = "objcRuntime.swift"

#if os(Linux)
    print("FileManager.displayName(atPath:) not implemented")
#endif

// Fatal error on Linux
let name = FileManager.default.displayName(atPath: path)
print("Localized name of file is \(name)")
