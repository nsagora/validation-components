import PackageDescription

let package = Package(
    name: "ValidationComponents",
    dependencies: [
        .Package(url: "https://github.com/nsagora/validation-kit.git", majorVersion: 0)
    ],
    exclude: ["Tests"]
)
