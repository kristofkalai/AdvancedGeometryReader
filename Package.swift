// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdvancedGeometryReader",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdvancedGeometryReader",
            targets: ["AdvancedGeometryReader"]),
    ],
    dependencies: [
        .package(url: "https://github.com/stateman92/SizePreferenceKey.git", exact: .init(0, 0, 4))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AdvancedGeometryReader",
            dependencies: [
                .product(name: "SizePreferenceKey", package: "SizePreferenceKey")
            ]),
        .testTarget(
            name: "AdvancedGeometryReaderTests",
            dependencies: ["AdvancedGeometryReader"]),
    ]
)
