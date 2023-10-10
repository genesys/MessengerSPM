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
    dependencies: [.package(url: "https://github.com/GolanSG/CoreSPM", from: "1.5.2")],
    targets: [
        .binaryTarget(
            name: "Messenger",
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudMessenger/GenesysCloudMessenger_version_t1.5.0_commit_c79b9819aece4531cecf42d56349518e31d3127c.zip",
            checksum: "b7dc446c23abba61a3752acebbfab76acfa7c759837602fe0a5022196b53f4dd"
        )
    ]
)
