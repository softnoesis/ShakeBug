// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShakeBug",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ShakeBug",
            targets: ["ShakeBug"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "ShakeBug",
                      url: "https://www.shakebug.com/sdk/ios/1.0.33/ShakeBug.xcframework.zip",
                      checksum: "86e0bcb1d9598caedce1e8554510b3b6e3fe31efe4079a3058513566b0dea1b1"),
    ]
)
