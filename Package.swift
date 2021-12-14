// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dictionary-KaanOzge",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Dictionary-KaanOzge",
            targets: ["Dictionary-KaanOzge"]),
    ],
    dependencies: [
        .package(name: "Math", url: "https://github.com/StarlangSoftware/Math-Swift.git", .exact("1.0.3")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Dictionary-KaanOzge",
            dependencies: ["Math"],
            resources: [
            .copy("mixedcase.txt"),
            .copy("lowercase.txt"),
            .copy("turkish_dictionary.txt"),
            .copy("turkish_misspellings.txt")]),
        .testTarget(
            name: "DictionaryTests",
            dependencies: ["Dictionary-KaanOzge"]),
    ]
)
