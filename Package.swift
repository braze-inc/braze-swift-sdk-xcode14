// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "braze-swift-sdk",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v10), 
    .tvOS(.v10),
  ],
  products: [
    .library(
      name: "BrazeKit",
      targets: ["BrazeKit", "BrazeKitResources"]
    ),
    .library(name: "BrazeUI", targets: ["BrazeUI"]),
    .library(name: "BrazeLocation", targets: ["BrazeLocation"]),
    .library(name: "BrazeNotificationService", targets: ["BrazeNotificationService"]),
    .library(name: "BrazePushStory", targets: ["BrazePushStory"]),
  ],
  dependencies: [
    /* ${dependencies-start} */
    /* ${dependencies-end} */
  ],
  targets: [
    .binaryTarget(
      name: "BrazeKit",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.4/BrazeKit.zip",
      checksum: "b927f78634d21ee0b52b3460c4609e0dd2a220df36c5ada68f4cfc7e23a4bb87"
    ),
    .target(
      name: "BrazeKitResources",
      resources: [.process("Resources")]
    ),
    .target(
      name: "BrazeUI",
      dependencies: [
        .target(name: "BrazeKit"),
      ],
      resources: [.process("Resources")]
    ),
    .binaryTarget(
      name: "BrazeLocation",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.4/BrazeLocation.zip",
      checksum: "75138022bed70261286deec8e7d74de35877a7a05a29f1da4cdda3a3acf30a96"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.4/BrazeNotificationService.zip",
      checksum: "870f47139cc08a8c08a53b92d7acce27f02dc071d5b988d0471f322e04c6aed9"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.4/BrazePushStory.zip",
      checksum: "2fda30f594bde39e2674977a16ed002d49b72a8ed562cfc2b0659aca8c3269c1"
    ),
  ]
)
