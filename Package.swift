// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftUIBackportsBug",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "CommonUI",
      targets: ["CommonUI"]
    ),
    .library(
      name: "SwiftUIBackportsBug",
      targets: ["SwiftUIBackportsBug"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/shaps80/SwiftUIBackports", from: "2.8.0")
  ],
  targets: [
    .target(
      name: "CommonUI",
      dependencies: [
        .product(name: "SwiftUIBackports", package: "SwiftUIBackports")
      ]
    ),
    .target(
      name: "SwiftUIBackportsBug",
      dependencies: [
        "CommonUI",
        .product(name: "SwiftUIBackports", package: "SwiftUIBackports")
      ]
    ),
  ]
)
