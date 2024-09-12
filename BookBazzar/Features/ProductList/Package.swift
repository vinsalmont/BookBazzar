// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProductList",
    platforms: [
        .iOS("17.0"),
    ],
    products: [
        .library(
            name: "ProductList",
            targets: ["ProductList"]
        ),
    ],
    dependencies: [
        .package(name: "DesignSystem", path: "./DesignSystem"),
        .package(name: "Stores", path: "./Core/Stores"),
        .package(name: "Models", path: "./Core/Models"),
        .package(name: "Managers", path: "./Core/Managers"),

    ],
    targets: [
        .target(
            name: "ProductList",
            dependencies: [
                .product(name: "DesignSystem", package: "DesignSystem"),
                .product(name: "Stores", package: "Stores"),
                .product(name: "Models", package: "Models"),
                .product(name: "Managers", package: "Managers"),
            ]
        ),
        .testTarget(
            name: "ProductListTests",
            dependencies: ["ProductList"]
        ),
    ]
)
