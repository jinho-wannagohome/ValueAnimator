// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ValueAnimator",
    platforms: [
        .iOS(.v9), .tvOS(.v12), .macOS(.v10_10), .watchOS(.v2)
    ],
    products: [
        .library(name: "ValueAnimator", targets: ["ValueAnimator"]),
    ],
    targets: [
        .target(
            name: "ValueAnimator",
            path: "Sources",
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "ValueAnimator-iOSTests",
            dependencies: ["ValueAnimator"],
            path: "ValueAnimatorTests",
            exclude: ["Info.plist"]
        ),
    ]
)
