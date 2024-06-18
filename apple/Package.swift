// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZanoWallet",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZanoWallet",
            targets: ["ZanoWallet"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZanoWallet",
            dependencies: [
                "libz",
                "libcurrency_core",
                "libcrypto_",
                "libwallet",
                "libcommon",
                "libboost",
                "libssl",
                "libcrypto",
            ],
            path: "./Sources/ZanoWallet",
            exclude: [
            ],
            cxxSettings: [
                .headerSearchPath("../../wallet"),
                .headerSearchPath("./Dependencies"),
                .headerSearchPath("./Dependencies/Dependencies/libwallet.a.xcframework"),
                .define("VARIABLE"),
                .headerSearchPath("wallet"),
                .define("NDEBUG", .when(configuration: .release))
            ],
            swiftSettings: [.interoperabilityMode(.Cxx)],
            linkerSettings: [
                // Frameworks
                // Libraries
            ]
        ),
        .testTarget(
            name: "ZanoWalletTests",
            dependencies: ["ZanoWallet"],
            cxxSettings: [
                .headerSearchPath("../../wallet"),
                .headerSearchPath("./Dependencies"),
                .headerSearchPath("./Dependencies/Dependencies/libwallet.a.xcframework"),
                .headerSearchPath("wallet"),
            ],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .binaryTarget(name: "libz", path: "./Dependencies/libz.a.xcframework"),
        .binaryTarget(name: "libcurrency_core", path: "./Dependencies/libcurrency_core.a.xcframework"),
        .binaryTarget(name: "libcrypto_", path: "./Dependencies/libcrypto_.a.xcframework"),
        .binaryTarget(name: "libwallet", path: "./Dependencies/libwallet.a.xcframework"),
        .binaryTarget(name: "libcommon", path: "./Dependencies/libcommon.a.xcframework"),
        .binaryTarget(name: "libboost", path: "./Dependencies/libboost.xcframework"),
        .binaryTarget(name: "libssl", path: "./Dependencies/libssl.xcframework"),
        .binaryTarget(name: "libcrypto", path: "./Dependencies/libcrypto.xcframework"),
    ]
)
