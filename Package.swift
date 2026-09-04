// swift-tools-version:5.9
import PackageDescription

let versionInfo = "1.3.4"

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
            checksum: "48ad4116a6216c13deb2da1056293a015cc9a748ee258b8eb5c8d71d58089485"
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
