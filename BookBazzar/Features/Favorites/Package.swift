// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Favorites",
    platforms: [
        .iOS("17.0"),
    ],
    products: [
        .library(
            name: "Favorites",
            targets: ["Favorites"]
        ),
    ],
    dependencies: [
        .package(name: "Models", path: "./Core/Models"),

    ],
    targets: [
        .target(
            name: "Favorites",
            dependencies: [
                .product(name: "Models", package: "Models"),
            ]
        ),
        .testTarget(
            name: "FavoritesTests",
            dependencies: ["Favorites"]
        ),
    ]
)
