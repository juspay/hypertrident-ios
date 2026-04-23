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
        .package(name: "Trident3DS", url: "https://github.com/juspay/trident3ds-ios.git", .exact("1.0.5"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperTrident",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.7.2/HyperTrident.zip",
            checksum: "91f216b66f9ad593877d27b72916a93ac88fd259c4f134a7b58c10b18c58e8e0"
        ),
        .target(
            name: "HyperTridentDependencies",
            dependencies: [
                .product(name: "Trident3DS", package: "Trident3DS")
            ]
        )
    ]
)