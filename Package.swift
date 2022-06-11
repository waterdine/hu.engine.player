// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "虎.engine.player",
    platforms: [
        .iOS("14.0"),
        .macOS("11.0"),
        .tvOS("11.0")
    ],
    products: [
        .iOSApplication(
            name: "虎.engine.player",
            targets: ["AppModule"],
            bundleIdentifier: "studio.waterdine.player",
            teamIdentifier: "88B988LF45",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        ),
        .library(
            name: "虎.engine.player.base",
            targets: ["虎.engine.player.base"]
        )
    ],
    dependencies: [
        .package(name: "虎.engine.base", url: "https://github.com/waterdine/hu.engine.base.git", .upToNextMajor(from: "0.0.1")),
        .package(name: "虎.engine.story", url: "https://github.com/waterdine/hu.engine.story.git", .upToNextMajor(from: "0.0.1")),
        .package(name: "虎.engine.puzzle", url: "https://github.com/waterdine/hu.engine.puzzle.git", .upToNextMajor(from: "0.0.1"))
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                "虎.engine.player.base"
            ],
            path: "."
        ),
        .target(
            name: "虎.engine.player.base",
            dependencies: [
                "虎.engine.puzzle",
                "虎.engine.story",
                "虎.engine.base"
            ]
        )
    ]
)
