// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MZFormSheetPresentationController",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "MZFormSheetPresentationController",
            targets: ["MZFormSheetPresentationController"]
        )
    ],
    targets: [
        .target(
            name: "MZAppearance",
            path: "Sources/MZAppearance",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include/MZAppearance")
            ]
        ),
        .target(
            name: "MZFormSheetPresentationController",
            dependencies: ["MZAppearance"],
            path: "Sources/MZFormSheetPresentationController",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include")
            ],
            linkerSettings: [
                .linkedFramework("QuartzCore")
            ]
        )
    ]
)
