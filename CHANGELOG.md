## 5.8.1

##### Fixed
- Fixes a conflict with the shared instance of [`ProcessInfo`], allowing low power mode notifications to trigger correctly.

##### Changed
- Renames the `BrazeLocation` class to `BrazeLocationProvider` to avoid shadowing the module of the same name ([SR-14195](https://bugs.swift.org/browse/SR-14195)).

[`ProcessInfo`]: https://developer.apple.com/documentation/foundation/processinfo

## 5.8.0

To help migrate your app from the Appboy-iOS-SDK to our Swift SDK, this release includes the `Appboy-iOS-SDK` [migration guide]:
- Follow step-by-step instructions to migrate each feature to the new APIs.
- Includes instructions for a minimal migration scenario via our compatibility libraries.

##### Added
- Adds compatibility libraries `BrazeKitCompat` and `BrazeUICompat`:
  - Provides all the old APIs from `Appboy-iOS-SDK` to easily start migrating to the Swift SDK.
  - See the [migration guide] for more details.
- Adds support for [News Feed](https://www.braze.com/docs/user_guide/engagement_tools/news_feed) data models and analytics.
  - News Feed UI is not supported by the Swift SDK. See the [migration guide] for instructions on using the compatibility UI.

[migration guide]: https://braze-inc.github.io/braze-swift-sdk/documentation/braze/appboy-migration-guide

## 5.7.0

##### Fixed
- Fixes an issue where modal image in-app messages would not respect the aspect ratio of the image when the height of the image is larger than its width.

##### Changed
- Changes modal, modal image, full, and full image in-app message view attributes to use the `ViewDimension` type for their `minWidth`, `maxWidth` and `maxHeight` attributes.
  - The `ViewDimension` type enables providing different values for regular and large size-classes.

##### Added
- Adds a configuration to use a randomly generated UUID instead of IDFV as the device ID: [`useUUIDAsDeviceId`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/configuration-swift.class/useuuidasdeviceid).
  - This configuration defaults to `false`. To opt in to this feature, set this value to `true`.
  - Enabling this value will only affect new devices. Existing devices will use the device identifier that was previously registered.

## 5.6.4

##### End of early access phase / Migration Guide / Compatibility Libraries

This release marks the end of the early access phase for the Braze Swift SDK. `Appboy-iOS-SDK` is now deprecated and support will cease on <INSERT DATE HERE>. 

To help with your migration process, this release includes:
- [Appboy-iOS-SDK: Migration guide]:
  - Follow step-by-step instructions to migrate each feature to the new APIs.
  - Includes instructions for minimal migration scenario via our compatibility libraries.
- Compatibility libraries `BrazeKitCompat` and `BrazeUICompat`:
  - Provides all the old APIs from `Appboy-iOS-SDK` to easily start migrating to the Swift SDK.

##### Fixed
- Fixes an issue preventing the execution of `BrazeDelegate` methods when setting the delegate using Objective-C.
- Fixes an issue where triggering an in-app message twice with the same event did not place the message on the in-app message stack under certain conditions.

##### Added
- Adds the public `id` field to `Braze.InAppMessage.Data`.
- Adds `logImpression(using:)` and `logClick(buttonId:using:)` to both in-app messages and content cards, and adds `logDismissed(using:)` to content cards.
  - It is recommended to continue using the associated `Context` to log impressions, clicks, and dismissals for the majority of use cases.
- Adds Swift concurrency to support async/await versions of the following public methods. These methods can be used as alternatives to their corresponding counterparts that use completion handlers:
  - [`Braze.User.id()`]
  - [`Braze.deviceId()`]
  - [`ContentCards.requestRefresh()`]
  - [`ContentCards.cardsStream`] as an alternative to [`ContentCards.subscribeToUpdates(_:)`]

[Appboy-iOS-SDK: Migration guide]: https://braze-inc.github.io/braze-swift-sdk/documentation/braze/appboy-migration-guide
[`Braze.User.id()`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/user-swift.class/id()
[`Braze.deviceId()`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/deviceid()
[`ContentCards.requestRefresh()`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/contentcards-swift.class/requestrefresh()
[`ContentCards.cardsStream`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/contentcards-swift.class/cardsstream
[`ContentCards.subscribeToUpdates(_:)`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/contentcards-swift.class/subscribetoupdates(_:)

## 5.6.3

##### Fixed
- Fixes the `InAppMessageRaw` to `InAppMessage` conversion to properly take into account the `extras` dictionary and the `duration`.
- Fixes an issue preventing the execution of the [`braze(_:sdkAuthenticationFailedWithError:)`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/brazedelegate/braze(_:sdkauthenticationfailedwitherror:)-505pz) delegate method in case of an authentication error.

##### Changed
- Improves error logging descriptions for HTTP requests and responses.

## 5.6.2

##### Changed
- Corrected the version number from the previous release.

## 5.6.1

##### Added
- Adds the public initializers `Braze.ContentCard.Context(card:using:)` and `Braze.InAppMessage.Context(message:using:)`.

## 5.6.0

##### Fixed
- The modal webview controller presented after a click now correctly handles non-HTTP(S) URLs (e.g. App Store URLs).
- Fixes an issue preventing some test HTML in-app messages from displaying images.

##### Added
- Learn how to easily customize `BrazeUI` in-app message and content cards UI components with the following documentation and example code:
  - [In-App Message UI Customization] article
  - [Content Cards UI Customization] article
  - `InAppMessageUI-Customization` example scheme
  - `ContentCardUI-Customization` example scheme
- Adds new attributes to `BrazeUI` in-app message UI components:
  - `cornerCurve` to change the [`cornerCurve`]
  - `buttonsAttributes` to change the font, spacing and corner radius of the buttons
  - `imageCornerRadius` to change the image corner radius for slideups
  - `imageCornerCurve` to change the image [`cornerCurve`] for slideups
  - `dismissible` to change whether slideups can be interactively dismissed
- Adds direct accessors to the in-app message view subclass on the [`BrazeInAppMessageUI.messageView`] property.
  - [`slideup`], [`modal`], [`modalImage`], [`full`], [`fullImage`], [`html`], [`control`].
- Adds direct accessors to the content card `title`, `description` and `domain` when available.
- Adds `Braze.Notifications.isInternalNotification` to check if a push notification was sent by Braze for an internal feature.
- Adds [`brazeBridge.changeUser()`] to the HTML in-app messages JavaScript bridge.

[In-App Message UI Customization]: https://braze-inc.github.io/braze-swift-sdk/documentation/braze/in-app-message-customization
[Content Cards UI Customization]: https://braze-inc.github.io/braze-swift-sdk/documentation/braze/content-cards-customization
[`cornerCurve`]: https://developer.apple.com/documentation/quartzcore/calayer/3152596-cornercurve
[`BrazeInAppMessageUI.messageView`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/brazeinappmessageui/messageview
[`brazeBridge.changeUser()`]: https://www.braze.com/docs/user_guide/message_building_by_channel/in-app_messages/customize/html_in-app_messages/#bridge
[`slideup`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/inappmessageview/slideup
[`modal`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/inappmessageview/modal
[`modalImage`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/inappmessageview/modalimage
[`full`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/inappmessageview/full
[`fullImage`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/inappmessageview/fullimage
[`html`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/inappmessageview/html
[`control`]: https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/inappmessageview/control

##### Changed

- The `applyAttributes()` method for `BrazeContentCardUI` views now take the `attributes` explicitly as a parameter.

## 5.5.1

##### Fixed
- Fixes an issue where content cards would not be properly removed when stopping a content card campaign on the dashboard and selecting the option _Remove card after the next sync (e.g. session start)_.

## 5.5.0

##### Added
- Adds support for host apps written in Objective-C.
  - Braze Objective-C types start either with `BRZ` or `Braze`, e.g.:
    - `Braze`
    - `BrazeDelegate`
    - `BRZContentCardRaw`
  - See our Objective-C [Examples](Examples/) project.
- Adds [`BrazeDelegate.braze(_:noMatchingTriggerForEvent:)`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/brazedelegate/braze(_:nomatchingtriggerforevent:)-8rt7y) which is called if no Braze in-app message is triggered for a given event.

##### Changed
- In `Braze.Configuration.Api`:
  - Renamed `SdkMetadata` to `SDKMetadata`.
  - Renamed `addSdkMetadata(_:)` to `addSDKMetadata(_:)`.
- In `Braze.InAppMessage`:
  - Renamed `Themes.default` to `Themes.defaults`.
  - Renamed `ClickAction.uri` to `ClickAction.url`.
  - Renamed `ClickAction.uri(_:useWebView:)` to `ClickAction.url(_:useWebView:)`.

## 5.4.0

##### Fixed
- Fixes an issue where `brazeBridge.logClick(button_id)` would incorrectly accept invalid `button_id` values like `""`, `[]`, or `{}`.

##### Added
- Adds support for Braze Action Deeplink Click Actions.

## 5.3.2

##### Fixed
- Fixes an issue preventing compilation when importing `BrazeUI` via SwiftPM in specific cases.
- Lowers `BrazeUI` minimum deployment target to iOS 10.0.

## 5.3.1

##### Fixed
- Fixes an HTML in-app message issue where clicking a link in an iFrame would launch a separate webview and close the message, instead of redirecting within the iFrame.
- Fixes the rounding of In-App Message modal view top corners.
- Fixes the display of modals and full screen in-app messages on iPads in landscape mode.

##### Added
- Adds two Example schemes:
  - InAppMessage-Custom-UI:
    - Demonstrates how to implement your own custom In-App Message UI.
    - Available on iOS and tvOS.
  - ContentCards-Custom-UI:
    - Demonstrates how to implement your own custom Content Card UI.
    - Available on iOS and tvOS.
- Adds [`Braze.InAppMessage.ClickAction.uri`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/inappmessage/clickaction/uri) for direct access.
- Adds [`Braze.ContentCard.ClickAction.uri`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/contentcard/clickaction/uri/) for direct access.
- Adds [`Braze.deviceId(queue:completion:)`](https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/braze/deviceid(queue:completion:)) to retrieve the device identifier used by Braze.

## 5.3.0

##### Added
- Adds support for tvOS.
  - See the schemes _Analytics-tvOS_ and _Location-tvOS_ in the [Examples](Examples/) project.

## 5.2.0

##### Added
- Adds [Content Cards](https://www.braze.com/docs/user_guide/message_building_by_channel/content_cards) support.
  - See the [_Content Cards UI_](https://braze-inc.github.io/braze-swift-sdk/tutorials/braze/c2-contentcardsui) tutorial to get started.

##### Changed
- Raises `BrazeUI` minimum deployment target to iOS 11.0 to allow providing SwiftUI compatible Views.

## 5.1.0

##### Fixed
- Fixes an issue where the SDK would be unable to present a webview when the application was already presenting a modal view controller.
- Fixes an issue preventing a full device data update after changing the identified user.
- Fixes an issue preventing events and user attributes from being flushed automatically under certain conditions.
- Fixes an issue delaying updates to push notifications settings.

##### Added
- Adds CocoaPods support.
  - Pods:
    - [BrazeKit](https://cocoapods.org/pods/BrazeKit)
    - [BrazeUI](https://cocoapods.org/pods/BrazeUI)
    - [BrazeLocation](https://cocoapods.org/pods/BrazeLocation)
    - [BrazeNotificationService](https://cocoapods.org/pods/BrazeNotificationService)
    - [BrazePushStory](https://cocoapods.org/pods/BrazePushStory)
  - See [Examples/Podfile](Examples/Podfile) for example integration.
- Adds `Braze.UIUtils.activeTopmostViewController` to get the topmost view controller that is currently being presented by the application.

## 5.0.1

##### Fixed
- Fixes a race condition when retrieving the user's notification settings.
- Fixes an issue where duplicate data could be recorded after force quitting the application.

## 5.0.0 (Early Access)

We are excited to announce the initial release of the Braze Swift SDK!

The Braze Swift SDK is set to replace the [current Braze iOS SDK](https://github.com/Appboy/appboy-ios-sdk/) and provides a more modern API, simpler integration, and better performance.

### Current limitations

The following features are not supported yet:
- ~~Objective-C integration~~
  - Added in [5.5.0](#550)
- ~~tvOS integration~~
  - Added in [5.3.0](#530)
- ~~News Feed~~
  - Added in [5.7.0](#570)
- ~~Content Cards~~
  - Added in [5.2.0](#520)
