//
//  objcRuntime.swift
//
//  Created by Filip Klembara on 3/7/18.
//

// Checks if there is objective C runtime
#if _runtime(_ObjC)
    print("There is objective C runtime")
#else
    print("No objective C runtime :(")
#endif
