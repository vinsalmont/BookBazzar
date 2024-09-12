// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Services",
    platforms: [
        .iOS("17.0"),
    ],
    products: [
        .library(
            name: "Services",
            targets: ["Services"]
        ),
    ],
    dependencies: [
        .package(name: "Models", path: "./Models"),
    ],
    targets: [
        .target(
            name: "Services",
            dependencies: [
                .product(name: "Models", package: "Models"),
            ]
        ),
        .testTarget(
            name: "ServicesTests",
            dependencies: ["Services"]
        ),
    ]
)
