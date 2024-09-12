// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Stores",
    platforms: [
        .iOS("17.0"),
    ],
    products: [
        .library(
            name: "Stores",
            targets: ["Stores"]
        ),
    ],
    dependencies: [
        .package(name: "Models", path: "../Models"),
        .package(name: "Services", path: "./Services"),

    ],
    targets: [
        .target(
            name: "Stores",
            dependencies: [
                .product(name: "Models", package: "Models"),
                .product(name: "Services", package: "Services"),
            ]
        ),
        .testTarget(
            name: "StoresTests",
            dependencies: ["Stores"]
        ),
    ]
)
