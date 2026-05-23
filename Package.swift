// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeIronSourceAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "GenieeIronSourceAdapter",
            targets: ["GenieeIronSourceAdapterTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package.git",
            exact: "9.4.1"
        )
    ],
    targets: [
        .target(
            name: "GenieeIronSourceAdapterTarget",
            dependencies: [
                "GenieeIronSourceAdapter",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package")
            ],
            path: "Sources/GenieeIronSourceAdapterTarget"
        ),
        .binaryTarget(
            name: "GenieeIronSourceAdapter",
            url: "https://github.com/unigeniee/geniee-ios-ironsource-adapter/releases/download/9.4.100/GenieeIronSourceAdapter.9.4.1.0.zip",
            checksum: "069a97d4ed2c20b218acd313a51a26327479449727cd357834a7dc1f788351f1"
        )
    ]
)
