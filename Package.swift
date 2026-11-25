// swift-tools-version:5.5
import PackageDescription

// Version is technically not required here, SPM doesn't check
let version = "2.9.6"
// Tag is required to point towards the right asset. SPM requires the tag to follow semantic versioning to be able to resolve it.
let tag = "2.9.6-handbrake"
let checksum = "4e555628ac77b16becf2899cb6fdbcf1f0f6ea434893d0a5d0f5833e1ba7e94b"
let url = "https://github.com/HandBrake/Sparkle/releases/download/\(tag)/Sparkle-for-Swift-Package-Manager.zip"

let package = Package(
    name: "Sparkle",
    platforms: [.macOS(.v10_13)], // leaving "10.13" as a breadcrumb for searching
    products: [
        .library(
            name: "Sparkle",
            targets: ["Sparkle"])
    ],
    targets: [
        .binaryTarget(
            name: "Sparkle",
            url: url,
            checksum: checksum
        )
    ]
)
