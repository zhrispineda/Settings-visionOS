#  Settings-visionOS
SwiftUI recreation of the visionOS Settings app.

## Examples
![A GIF comparing Apple's Settings app and this project's Settings app side-by-side](Assets/Settings.gif)
![An image comparing both apps's General section](Assets/General@2x.png)
![An image comparing both app's Apps section](Assets/Apps@2x.png)

## Information
- This personal project is a recreation of Apple's current and default Settings app for Apple Vision Pro **(Simulator.app)** on visionOS 1.1 (21O209).
- The `main` branch will have the latest publicly-available version of visionOS; older versions will be available as their own branch.
- All features within the app are only simulations and have no effect on the device outside of the app.
- Most views are complete, but lack features such as saving data, including basic variables, perhaps for now.
- Since this project is based off of the Simulator and not a physical Apple Vision Pro, aspects such as simulated controls and views for wireless settings, are missing in areas such as the top of the sidebar below the Sign In button, and will be added in the future.
- Currently, this project does not make use of Swift Packages, UIKit, Storyboards, or Objective-C, and is pure Swift & SwiftUI.

## Usage
Open the project in Xcode and run with either a Simulator running Apple Vision Pro's visionOS or a physical Apple Vision Pro with Developer Mode enabled as a destination.

As this is a personal project for learning Swift and SwiftUI, feel free to fork, explore, and make the project your own for any personal purpose!

## Contributing
Contributions such as pull requests that help make the app more accurate and better optimized are always welcome.

Issues are also encouraged to raise awareness to certain issues, inconsistencies, or questions about the project.

## To Do
- Add pop to root functionality in the sidebar
- Make use of NSUserDefaults for saving and loading basic data
- Make use of Bindings and a Model to keep persistent data across views and app sessions
- Work on missing sheet views such as ones opened through links
- Implement simulated functionality of radios and other physical-device-only views at a later date

## Disclaimers
- This app is a recreation of one of Apple's own apps and its designs.
- All assets such as icons including those of Apple's and the Bluetooth symbol are not my own in any way.
- Feel free to look through the commit history to see the project evolve from a single view to its current state.
- Some code may not be best practice and may not be optimal.
