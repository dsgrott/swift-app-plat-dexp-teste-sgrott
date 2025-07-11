// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "AppConsumer",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .executable(
            name: "AppConsumer",
            targets: ["AppConsumer"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/dsgrott/swift-fmk-plat-dexp-teste-sgrott.git", from: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppConsumer",
            dependencies: [
                .product(name: "FrameworkExample", package: "swift-fmk-plat-dexp-teste-sgrott")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "AppConsumerTests",
            dependencies: ["AppConsumer"],
            path: "Tests"
        )
    ]
)
