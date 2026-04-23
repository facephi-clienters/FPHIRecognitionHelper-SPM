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
        .package(url: "git@github.com:facephi-clienters/FPBRecognition-SPM.git", .exactItem("3.27.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FPHIRecognitionHelper-SPM",
            dependencies: [
                "FPBRecognition-SPM", "FPHIRecognitionHelper"]),

         .binaryTarget(name: "FPHIRecognitionHelper", url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/DocumentReader/FPHIRecognitionHelper/3.27.2/FPHIRecognitionHelper.zip",
            checksum: "25bae7dabff74e8c974f966bda796a099aac3453d39631eebaa9ac6493d72df7") 
    ]
)