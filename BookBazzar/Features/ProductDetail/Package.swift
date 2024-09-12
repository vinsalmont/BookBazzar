// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProductDetail",
    platforms: [
        .iOS("17.0"),
    ],

    products: [
        .library(
            name: "ProductDetail",
            targets: ["ProductDetail"]
        ),
    ],
    dependencies: [
        .package(name: "DesignSystem", path: "./DesignSystem"),
        .package(name: "Stores", path: "./Core/Stores"),

    ],
    targets: [
        .target(
            name: "ProductDetail",
            dependencies: [
                .product(name: "DesignSystem", package: "DesignSystem"),
                .product(name: "Stores", package: "Stores"),
            ]
        ),
        .testTarget(
            name: "ProductDetailTests",
            dependencies: ["ProductDetail"]
        ),
    ]
)
