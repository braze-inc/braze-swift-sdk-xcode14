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
      url: "https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.1/BrazeKit.zip",
      checksum: "ab9a13e32f060a1bcc0897dfede31df42dfe197497c5f9a4a56e09fc9e67333e"
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
      url: "https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.1/BrazeLocation.zip",
      checksum: "8ee14d8cf4e8eaa4bb88259efeb5c9699c2530bf5c5e7b2a6aabb67faa6b5169"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.1/BrazeNotificationService.zip",
      checksum: "27d93a92fdc3ed31a37145a5f9ce36d753613fbe66d416776fa633a47fd628b3"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.1/BrazePushStory.zip",
      checksum: "cce712a62ccc9feeeece25cc710803e8e43c68fd2c5c9681024efe2142286153"
    ),
  ]
)
