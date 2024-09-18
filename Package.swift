// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorIntentCommunicationPlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorIntentCommunicationPlugin",
            targets: ["IntentCommunicationPluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "IntentCommunicationPluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/IntentCommunicationPluginPlugin"),
        .testTarget(
            name: "IntentCommunicationPluginPluginTests",
            dependencies: ["IntentCommunicationPluginPlugin"],
            path: "ios/Tests/IntentCommunicationPluginPluginTests")
    ]
)