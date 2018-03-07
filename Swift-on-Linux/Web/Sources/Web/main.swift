//
//  main.swift
//  Web
//
//  Created by Filip Klembara on 3/7/18.
//

import Squirrel
import NutView

// Init server
let server = Server()

// static route /hello
server.get("hello") {
    return "Hello"
}

struct Person: Decodable {
    let name: String
    let age: Int
}

// dynamic route /Johny/31 /Tom/21 ...
server.get(":name/:age") { (person: Person) in

    // return person struct as JSON
    return person
}

// static route /view
var visits = 0
server.get("view") {
    visits += 1

    // return View
    return try View(name: "Hello", with: ["number": visits])
}

// Add custom 404 handler
ErrorHandler.sharedInstance.addErrorHandler(handler: Custom404())

// Run server
try server.run()
