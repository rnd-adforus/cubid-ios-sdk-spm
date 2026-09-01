// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.3.3"

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
            checksum: "0f3d451fd5f3c5b8eb209c85ba0d4428a6f870403b62d22da4f594299e5d8a3b"
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
