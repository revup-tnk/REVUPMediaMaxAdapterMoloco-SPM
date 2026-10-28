// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterMoloco",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterMoloco",
            targets: ["REVUPMediaMaxAdapterMolocoTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Moloco.git", exact: "4110100.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterMolocoTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterMoloco"),
                .product(name: "AppLovinMediationMolocoAdapter", package: "AppLovin-MAX-Swift-Package-Moloco"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMoloco",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterMoloco.zip",
            checksum: "53defccf34b61b56cc6bb13c596d6df711bd8ca098e42a8293012f1543bd2439"
        ),
    ]
)
