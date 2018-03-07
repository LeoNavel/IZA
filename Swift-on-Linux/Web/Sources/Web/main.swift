import Squirrel
import NutView

let server = Server()

server.get("/hello") {
    return "Hello"
}

struct Person: Decodable {
    let name: String
    let age: Int
}

server.get(":name/:age") { (person: Person) in
    return person
}

var number = 0
server.get("view") {
    number += 1
    return try View(name: "Hello", with: ["number": number])
}

ErrorHandler.sharedInstance.addErrorHandler(handler: Custom404())

try server.run()
