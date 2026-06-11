# Release Notes

## SwiftPM-only migration

- Removed CocoaPods and Carthage packaging artifacts.
- Added first-class Swift Package Manager support through the root `Package.swift` manifest.
- Moved the Objective-C library sources into the native SwiftPM `Sources/MZFormSheetPresentationController` layout.
- Vendored the previously required `MZAppearance` Objective-C support code as an internal SwiftPM target so the public API remains available without CocoaPods.
- The SwiftPM manifest declares `.iOS(.v15)` because SwiftPM cannot express iOS 15.6 exactly. The intended minimum supported runtime for this fork is iOS 15.6.
