// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SignalStrengthIndicator",
    products: [
        .library(
            name: "SignalStrengthIndicator",
            targets: ["SignalStrengthIndicator"]),
    ],
    dependencies: [
    ],
    path: "./SignalStrengthIndicator/Sources/",
    targets: [
        .target(
            name: "SignalStrengthIndicator",
            dependencies: []),
    ]
)
