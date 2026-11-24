// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.5.0"

let package = Package(
    name: "CuBidKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CuBidKit",
            targets: ["CuBidKit", "CuBidKitResources"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CuBidKit",
            url: "https://nexus.adforus.com/repository/cubid_iOS/CuBid/\(versionInfo)/CuBidKit-SPM.zip",
            checksum: "4987a9bb2c6cad40c2f8f2309782fc90903aa772cff92415336de07a091ad8e7"
        ),
        .target(
            name: "CuBidKitResources",
            path: "Sources/CuBidKitResources",
            resources: [
                .copy("CuBidResources.bundle")
            ]
        )
    ]
)
