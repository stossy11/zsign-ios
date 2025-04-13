// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ZSignApple",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "ZSignApple",
            targets: ["ZSign"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/OpenSSL-Package.git", from: "3.3.1000")
    ],
    targets: [
        .target(
            name: "ZSign",
            dependencies: [
                .product(name: "OpenSSL", package: "OpenSSL-Package")
            ]
            publicHeadersPath: "./Includes",
            cxxSettings: [
                .headerSearchPath("."),
            ],
        )
    ],
    cxxLanguageStandard: .cxx14
)
