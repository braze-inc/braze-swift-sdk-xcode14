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
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.3/BrazeKit.zip",
      checksum: "16a31c9fec6ba4fcab01e363d81b3ccc55a9a928d4b646734fa977bdef509765"
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
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.3/BrazeLocation.zip",
      checksum: "b1219740cf9058caeff4294c2b14dc3c02fdc06c3049330224e2715cb9605edc"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.3/BrazeNotificationService.zip",
      checksum: "61d1f1691032d7cfa2c90afb3740d4fed9b07f01c13a4c7e22c665866a4c1dcf"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.3/BrazePushStory.zip",
      checksum: "9561af662869df19ee4ade30d94ab037926faef43caa75099b53809d9d8abd91"
    ),
  ]
)
