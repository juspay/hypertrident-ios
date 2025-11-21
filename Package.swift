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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.5/HyperTrident.zip",
            checksum: "0f0c55e721cab88e7de9fbee6d8b7d5d66f8f47c675c14186319734ce850de9a"
        ),
        .target(
            name: "HyperTridentDependencies",
            dependencies: [
                .product(name: "Trident3DS", package: "Trident3DS")
            ]
        )
    ]
)