// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "swift-app-plat-dexp-teste-sgrott",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .executable(
            name: "App",
            targets: ["App"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/dsgrott/swift-fmk-plat-dexp-teste-sgrott.git", from: "1.1.0")
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "FrameworkExample", package: "swift-fmk-plat-dexp-teste-sgrott")
            ],
            path: "Sources/App",
            resources: [
                .process("Assets.xcassets")
            ]
        ),
        .testTarget(
            name: "AppTests",
            dependencies: ["App"],
            path: "Tests"
        ),
        .testTarget(
               name: "AppUITests",
               dependencies: ["App"],
               path: "UITests"
           )
    ]
)
