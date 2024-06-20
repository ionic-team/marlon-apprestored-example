// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MarlonExamplePlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "MarlonExamplePlugin",
            targets: ["MarlonAppRestorePlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "MarlonAppRestorePlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/MarlonAppRestorePlugin"),
        .testTarget(
            name: "MarlonAppRestorePluginTests",
            dependencies: ["MarlonAppRestorePlugin"],
            path: "ios/Tests/MarlonAppRestorePluginTests")
    ]
)
