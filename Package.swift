// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.4.0"

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
            checksum: "938b21671d5a74e0dc72e788e4a7e182f659e933e7f30b6f9c9e8fd5fc472dc6"
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
