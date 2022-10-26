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
      url: "https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.0/BrazeKit.zip",
      checksum: "e42bca1886fe3c70be3408c0f590449bd2728252e5bf3b562eb08e02706d4b31"
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
      url: "https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.0/BrazeLocation.zip",
      checksum: "51d8fb7393aaff4211c7ded91b3d00c2fe84cc1542a2a30dc4750bb3ff6cfc6d"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.0/BrazeNotificationService.zip",
      checksum: "b564152faa68649ddf0986d6e244420526261c317c7b0a9a19734d8f680d04d7"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.0/BrazePushStory.zip",
      checksum: "3c418d3756930e482f933ab3bf404bba470a559e635f89814bc6875cc0318cb7"
    ),
  ]
)
