// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "GenesysCloudMessenger",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GenesysCloudMessenger",
            targets: ["GenesysCloudMessengerWrapper"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/GolanSG/CoreSPM.git",
            from: "1.10.1"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "GenesysCloudMessenger",
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudMessenger/GenesysCloudMessenger_version_t1.10.1_commit_409f8efe780d21e16ed5aa9f142d7bd9565c4d65.zip",
            checksum: "0bd940be8cc8abcc9b9aa354b70cde676fe7d0a0155366522a5340a24c9c1b8f"
        ),
        .binaryTarget(
            name: "MessengerTransportTarget",
            url: "https://genesysdx.jfrog.io/artifactory/TransportSDK/MessengerTransport.xcframework-2.7.2.zip",
            checksum: "970802b29b791a5e037d45cd4c6fc3aa7fda502a3081c2cadead141807ded9ea"
        ),
        .target(
            name: "GenesysCloudMessengerWrapper",
            dependencies: [
                "GenesysCloudMessenger",
                "MessengerTransportTarget",
                .product(name: "GenesysCloudCore", package: "CoreSPM")
            ]
        )
    ]
)
