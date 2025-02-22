// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TLSify",
    products: [
        .executable(name: "TLSify", targets: ["TLSify"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.17.0"),
        .package(url: "https://github.com/apple/swift-nio-ssl.git", from: "2.14.0"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", .exact("0.0.6")),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "TLSify",
            dependencies: ["TLSifyLib", "ArgumentParser", "NIO", "Logging"]),
        .target(
            name: "TLSifyLib",
            dependencies: ["NIO", "NIOSSL", "Logging"]),
    ]
)
