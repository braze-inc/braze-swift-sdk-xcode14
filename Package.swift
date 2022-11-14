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
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.2/BrazeKit.zip",
      checksum: "fb4e395499a89634f1a1631e22ee9b624b644feb4592837ca4b7d2cf5123444b"
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
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.2/BrazeLocation.zip",
      checksum: "2863a9358b74d1ac3d9b735a7369fe9240e56adbffd703533dee59308a0f19a1"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.2/BrazeNotificationService.zip",
      checksum: "262f995fc5fd5d583e45e97d8c2f22016a463754b70e6c175d38313299aa22e3"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.2/BrazePushStory.zip",
      checksum: "3f539d9284614af4d38c163cbfb1b251a6ab7e171db35939dfaf0f97ed06b5b4"
    ),
  ]
)
