// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPHIRecognitionHelper-SPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FPHIRecognitionHelper-SPM",
            targets: ["FPHIRecognitionHelper-SPM", "FPHIRecognitionHelper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/facephi-clienters/FPBRecognition-SPM.git", .exactItem("3.27.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FPHIRecognitionHelper-SPM",
            dependencies: [
                "FPBRecognition-SPM", "FPHIRecognitionHelper"]),

         .binaryTarget(name: "FPHIRecognitionHelper", url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/DocumentReader/FPHIRecognitionHelper/3.27.4/FPHIRecognitionHelper.zip",
            checksum: "80c436201352a33e2735c02c20870b345a24083855d2e65bcbe16d8b9c5ca90f") 
    ]
)
