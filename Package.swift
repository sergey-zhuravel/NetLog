// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "NetLogSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NetLogSDK",
            targets: ["NetLogSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "NetLogSDK",
            url: "https://github.com/sergey-zhuravel/NetLog/raw/main/releases/1.5/spm/NetLogSDK.framework.zip",
            checksum: "442b6a64a2eea895da19414c72b952800a338ebb7ee1becc729bb53c630aaba3"
        )
    ]
)
