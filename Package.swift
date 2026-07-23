// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterMoloco",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterMoloco",
            targets: ["REVUPMediaMaxAdapterMolocoTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.8.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterMolocoTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterMoloco"),
                .target(name: "AppLovinMediationMolocoAdapter"),
                .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMoloco",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterMoloco.zip",
            checksum: "bb35e6d7e66e9499ccc00576332afc0299d1d5e5fa1f78f7cda0bf1d699d672b"
        ),
        .binaryTarget(
            name: "AppLovinMediationMolocoAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/moloco-adapter/AppLovinMediationMolocoAdapter-4.8.1.0.zip",
            checksum: "8081560592cf75cf24acb168aafa288433b2f5c84dc63adee5fb0c7059e025a7"
        )
    ]
)
