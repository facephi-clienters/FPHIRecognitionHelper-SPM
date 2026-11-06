// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPHIRecognitionHelper-SPM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FPHIRecognitionHelper-SPM",
            targets: ["FPHIRecognitionHelper-SPM", "FPHIRecognitionHelper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/facephi-clienters/FPBRecognition-SPM.git", .exactItem("6.4.5")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FPHIRecognitionHelper-SPM",
            dependencies: [
                "FPBRecognition-SPM", "FPHIRecognitionHelper"]),

         .binaryTarget(name: "FPHIRecognitionHelper", url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/DocumentReader/FPHIRecognitionHelper/6.4.1/FPHIRecognitionHelper.zip",
            checksum: "b849170f1693d538a1b5bd6b0de74ec4ff0fb4adb736b443638d5a29128df750") 
    ]
)