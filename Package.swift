// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "AlternateIcons",
    targets: [
        Target(name: "AltKit"),
        Target(name: "AlternateIcons", dependencies: ["AltKit"])
    ],
    dependencies: [
        .Package(url: "https://github.com/JohnSundell/Files.git", majorVersion: 1),
        .Package(url: "https://github.com/JohnSundell/Unbox.git", majorVersion: 2)
    ]
)
