// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Managers",
    platforms: [
        .iOS("17.0"),
    ],
    products: [
        .library(
            name: "Managers",
            targets: ["Managers"]
        ),
    ],
    dependencies: [
        .package(name: "Models", path: "./Models"),
    ],
    targets: [
        .target(
            name: "Managers",
            dependencies: [
                .product(name: "Models", package: "Models"),
            ]
        ),
        .testTarget(
            name: "ManagersTests",
            dependencies: ["Managers"]
        ),
    ]
)
