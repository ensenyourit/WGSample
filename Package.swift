// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleWG",
    platforms: [
        .macOS(SupportedPlatform.MacOSVersion.v10_15),
        .iOS(SupportedPlatform.IOSVersion.v15),
        .tvOS(SupportedPlatform.TVOSVersion.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SampleWG",
            targets: ["SampleWG"]),
    ],
    targets: [
        .binaryTarget(
            name: "SampleWG",
            path: "./Sources/SampleWG.xcframework")
    ]
)
