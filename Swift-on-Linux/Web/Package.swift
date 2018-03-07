// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Web",
    dependencies: [
         .package(url: "https://github.com/Swift-Squirrel/Squirrel.git", .branch("develop") /*from: "1.0.0"*/),
         .package(url: "https://github.com/Swift-Squirrel/NutView", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Web",
            dependencies: ["Squirrel", "NutView"]),
    ]
)
