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
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.7.0/BrazeKit.zip",
      checksum: "7ad4497f3ddfe7ac5436a847b44e5cc31f3f712bcc1776b0316e4da4f1ba3f7c"
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
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.7.0/BrazeLocation.zip",
      checksum: "a4ed848af968d6460483ac0a956f239e25b22eb18bdfd983e17cd9fa140d621a"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.7.0/BrazeNotificationService.zip",
      checksum: "a4f8d4c6ee25d003fa709ba23d9583461c876550441a462c90506d6b795d22b1"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.7.0/BrazePushStory.zip",
      checksum: "164476200813071afebf3eb7c63adbfedb3463b1853b02f996e99d1111fd4e23"
    ),
  ]
)
