#  Settings-visionOS
SwiftUI recreation of the visionOS Settings app.

> [!IMPORTANT]
> 
> This project is being worked on using **Xcode 16 beta** and **Swift 6**. To use this project on Xcode 15, change the version of Swift to 5:
>
> (Top of project sidebar) `Preferences` > Under `TARGETS` > `Preferences` > `Build Settings` > (Scroll to bottom) `Swift Compiler - Language` > `Swift Language Version` > Change the value `Swift 6` to `Swift 5`
>

## Examples
![A GIF comparing Apple's Settings app and this project's Settings app side-by-side](Assets/Settings.gif)
![An image comparing both apps's General section](Assets/General@2x.png)
![An image comparing both app's Apps section](Assets/Apps@2x.png)

## Information
- This personal project is a recreation of Apple's current and default Settings app for Apple Vision Pro **(Simulator)** on visionOS 2.0 **beta 4** (22N5286g).
- The `main` branch will have the latest available version of visionOS; older versions will be available as their own branch.
- All features within the app are only simulations and have no effect on the device outside of the app.
- Since this project is based off of the Simulator and not a physical Apple Vision Pro, aspects such as simulated controls and views only on physical devices are not implemented.

## Usage
Open the project in Xcode and run with either a Simulator running Apple Vision Pro's visionOS or a physical Apple Vision Pro with Developer Mode enabled as a destination.

As this is a personal project for learning Swift and SwiftUI, feel free to fork, explore, and make the project your own for any personal purpose!

## Disclaimers
- This app is a recreation of one of Apple's own apps and its designs.
- All assets such as icons and images are not my own in any way.
- Feel free to look through the commit history to see the project evolve from a single view to its current state.

## Other Settings Projects
- **iOS Settings** https://github.com/zhrispineda/Settings-iOS
- **watchOS Settings** https://github.com/zhrispineda/Settings-watchOS
