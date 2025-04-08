// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperTrident",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HyperTrident",
            targets: ["HyperTrident", "HyperTridentDependencies"]
        )
    ],
    dependencies: [
        .package(name: "Trident3DS", url: "https://github.com/juspay/trident3ds-ios.git", .exact("1.0.5"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperTrident",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.3/HyperTrident.zip",
            checksum: "c0e801058657465991d6e34c7a4e14bfb7a086e5c729c3edf46db8b4fb50f5ae"
        ),
        .target(
            name: "HyperTridentDependencies",
            dependencies: [
                .product(name: "Trident3DS", package: "Trident3DS")
            ]
        )
    ]
)