// swift-tools-version: 5.4

import PackageDescription

let package = Package(
    name: "Messenger",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Messenger",
            targets: ["Messenger"]
        )
    ],
    dependencies: [.package(url: "https://github.com/GolanSG/CoreSPM", from: "1.10.1")],
    targets: [
        .binaryTarget(
            name: "Messenger",
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudMessenger/GenesysCloudMessenger_version_t1.10.1_commit_409f8efe780d21e16ed5aa9f142d7bd9565c4d65.zip",
            checksum: "0bd940be8cc8abcc9b9aa354b70cde676fe7d0a0155366522a5340a24c9c1b8f"
        )
    ]
)
