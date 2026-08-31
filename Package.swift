// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.3.2"

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
            checksum: "b5b745910071bc899b4a85990d2ce9fa90d16f274c6ec651af5d411c3080341d"
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
