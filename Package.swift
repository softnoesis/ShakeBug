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
                      url: "https://www.shakebug.com/sdk/ios/1.0.25/ShakeBug.xcframework.zip",
                      checksum: "5fbe86a185e9ec3a290d48b0d090dd4f1fb2815df0042ac58f1c52fcfb5b3073"),
    ]
)
