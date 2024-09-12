// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Settings",
    platforms: [
        .iOS("17.0"),
    ],
    products: [
        .library(
            name: "Settings",
            targets: ["Settings"]
        ),
    ],
    dependencies: [
        .package(name: "Models", path: "./Core/Models"),
        .package(name: "UIComponents", path: "./UIComponents"),

    ],
    targets: [
        .target(
            name: "Settings",
            dependencies: [
                .product(name: "Models", package: "Models"),
                .product(name: "UIComponents", package: "UIComponents"),
            ]
        ),
        .testTarget(
            name: "SettingsTests",
            dependencies: ["Settings"]
        ),
    ]
)
