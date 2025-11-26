



# WorkoutActivity
![SwiftPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)
[![Platform](https://img.shields.io/badge/platforms-iOS%2013%2B-blue.svg)](#)
[![Swift Versions](https://img.shields.io/badge/Swift-5.7%2B-orange.svg)](#)
[![License](https://img.shields.io/badge/License-MIT-lightgrey.svg)](#)

WorkoutActivity is a lightweight Swift package designed to simplify working with HealthKit workout activities.

It provides a unified, human-readable, and UI-friendly layer on top of HKWorkoutActivityType, making it easy to display workout names, show activity icons with SF Symbols, and map values to and from HealthKit.
This package includes:
- A comprehensive enum of supported workout activities
- Human-readable localized-ready display names
- SF Symbols icons for many activities (iOS 16+)
- Bidirectional conversion to/from HKWorkoutActivityType
- Codable & CaseIterable support for use in UI, storage, and pickers
WorkoutActivityKit helps you build workout apps, activity pickers, HealthKit dashboards, and fitness interfaces with zero boilerplate and full type-safety.


## Installing WorkoutActivity
WorkoutActivity supports the Swift Package Manager.

### Swift Package Manager
To install WorkoutActivity using Swift Package Manager:
1. In Xcode, select “File” → “Add Packages...”
2. Enter the URL for this repository:
https://github.com/Elsner2002/WorkoutActivity.git

  Or add it to your Package.swift:

  .package(url: "https://github.com/Elsner2002/WorkoutActivity.git", from: "1.0.0")
  Then import the module:
    import WorkoutActivity


## Usage

### Listing all workout activities
let activities = WorkoutActivityType.allCases

### Getting a display name
activity.name

### Getting an SF Symbol (iOS 16+)
Image(systemName: activity.icon)

### Mapping to HealthKit
let hkType = activity.workoutType

### Mapping from HealthKit
let activity = WorkoutActivityType.from(hkType: .running)

## Swift Version Support- iOS 13+ for HealthKit integration
- iOS 16+ for SF Symbols icons
- Swift 5.7+

## Privacy
WorkoutActivity does not collect, transmit, store, or process any user data.
It only provides static mappings around HealthKit’s own API surface.

## Security
This package contains only pure Swift code with no networking, analytics, or external dependencies.
All HealthKit permissions remain fully under the control of your application.

## Contributing
Contributions are welcome!

If you’d like to add support for more icon mappings, improve naming, or extend utilities, feel free to open a pull request.

Typical workflow:
	1.	Clone the repository
	2.	Open the project in Xcode
	3.	Implement your changes
	4.	Submit a PR with a clear description

## License
WorkoutActivity is available under the MIT License.
