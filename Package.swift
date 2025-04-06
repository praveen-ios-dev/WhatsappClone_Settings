// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WhatsappClone_Settings",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WhatsappClone_Settings",
            targets: ["WhatsappClone_Settings"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "WhatsappClone_Settings"),
        .testTarget(
            name: "WhatsappClone_SettingsTests",
            dependencies: ["WhatsappClone_Settings"]
        ),
    ]
)
