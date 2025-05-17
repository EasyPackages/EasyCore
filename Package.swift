// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "EasyCore",
    products: [
        .library(name: "EasyCore", targets: ["EasyCore"]),
    ],
    targets: [
        .target(name: "EasyCore"),
        .testTarget(
            name: "EasyCoreTests",
            dependencies: ["EasyCore"]
        ),
    ]
)
