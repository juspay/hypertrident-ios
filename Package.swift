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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.3.5/HyperTrident.zip",
            checksum: "4c60e06fcb41b062998b2b4806cc4721d49626ce804f0096da89d59e2e49c5bf"
        ),
        .target(
            name: "HyperTridentDependencies",
            dependencies: [
                .product(name: "Trident3DS", package: "Trident3DS")
            ]
        )
    ]
)