// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PMKAlamofire",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "PMKAlamofire",
            targets: ["PMKAlamofire"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/mxcl/PromiseKit.git",
            .exact("6.13.2")
        ),
        .package(
            url: "https://github.com/Alamofire/Alamofire.git",
            .exact("5.4.1")
        )
    ],
    targets: [
        .target(
            name: "PMKAlamofire",
            dependencies: ["PromiseKit", "Alamofire"],
            path: "Sources"
        )
    ]
)
