// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Authentication",
    platforms: [
        .iOS("17.0"),
    ],
    products: [
        .library(
            name: "Authentication",
            targets: ["Authentication"]
        ),
    ],
    dependencies: [
        .package(name: "DesignSystem", path: "./DesignSystem"),
        .package(name: "Stores", path: "./Core/Stores"),
        .package(name: "Models", path: "./Core/Models"),
        .package(name: "UIComponents", path: "./UIComponents"),
    ],
    targets: [
        .target(
            name: "Authentication",
            dependencies: [
                .product(name: "DesignSystem", package: "DesignSystem"),
                .product(name: "Stores", package: "Stores"),
                .product(name: "Models", package: "Models"),
                .product(name: "UIComponents", package: "UIComponents"),
            ]
        ),
        .testTarget(
            name: "AuthenticationTests",
            dependencies: ["Authentication"]
        ),
    ]
)
