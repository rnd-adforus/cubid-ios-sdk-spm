// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.2.1"

let package = Package(
    name: "CuBidKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CuBidKit",
            targets: ["CuBidKit"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CuBidKit",
            url: "https://nexus.adforus.com/repository/cubid_iOS/CuBid/\(versionInfo)/CuBidKit.xcframework.zip",
            checksum: "d2fd18986b9c7bc06fc7a6ea7d30d6f2bc94f2600826a15143c90b79f195f3ad"
        )
    ]
)
