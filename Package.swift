// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperTrident",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "HyperTrident",
            targets: ["HyperTrident", "HyperTridentDependencies"]
        )
    ],
    dependencies: [
        .package(name: "Trident3DS", url: "https://github.com/juspay/trident3ds-ios.git", .exact("2.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperTrident",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.8.2/HyperTrident.zip",
            checksum: "9c29010e16931b23689f947301bb1819549d8bfa60e8e2e7c43b304893f4e416"
        ),
        .target(
            name: "HyperTridentDependencies",
            dependencies: [
                .product(name: "Trident3DS", package: "Trident3DS")
            ]
        )
    ]
)