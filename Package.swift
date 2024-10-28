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
            url: "https://github.com/Genesys/CoreSPM.git",
            from: "1.10.2"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "GenesysCloudMessenger",
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudMessenger/GenesysCloudMessenger_version_t1.10.2_commit_d3bedb94d0f0cba814400b457eb28a5d072592ed.zip",
            checksum: "3340d818ac2067e45a5b758b1af09a8c64b9bc2ed034a0c2ec9c77d9ee97b139"
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
