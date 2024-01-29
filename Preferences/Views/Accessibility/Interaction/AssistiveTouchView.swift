//
//  AssistiveTouchView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > AssistiveTouch
//

import SwiftUI

struct AssistiveTouchView: View {
    // Variables
    @State private var assistiveTouchEnabled = false
    @State private var showOnscreenKeyboardEnabled = false
    @State private var alwaysShowMenuEnabled = true
    @State private var performTouchGesturesEnabled = true
    @State private var useGameControllerEnabled = false
    @State private var trackingSensitivity = 0.3
    
    var body: some View {
        CustomList(title: "AssistiveTouch") {
            Section(content: {
                Toggle("AssistiveTouch", isOn: $assistiveTouchEnabled)
            }, footer: {
                Text("AssistiveTouch allows you to use your Apple Vision Pro if you have difficulty interacting with spatial content or if you require an adaptive accessory.")
            })
            
            Section {
                NavigationLink("Customize Top Level Menu", destination: CustomizeTopLevelMenuView())
            }
            
            Section(content: {
                ListRowNavigationLabel(title: "Single-Tap", subtitle: "", content: AssistiveTouchTapView(title: "Single-Tap"))
                ListRowNavigationLabel(title: "Double-Tap", subtitle: "None", content: AssistiveTouchTapView(title: "Double-Tap"))
                ListRowNavigationLabel(title: "Long Press", subtitle: "None", content: AssistiveTouchTapView(title: "Long Press"))
            }, header: {
                Text("Custom Actions")
            }, footer: {
                Text("Custom actions allow you to interact directly with the AssistiveTouch icon without opening the menu.")
            })
            
            Section(content: {
                Button(action: {}, label: {
                    HStack {
                        Text("Create New Gesture...")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                })
            }, header: {
                Text("Custom Gestures")
            }, footer: {
                Text("Custom gestures allow you to record gestures that can be activated from Custom in the Menu.")
            })
            
            Section {
                ListRowNavigationLabel(title: "Idle Opacity", subtitle: "40%", content: IdleOpacityView())
            }
            
            Section(content: {
                NavigationLink("Devices", destination: DevicesView())
                Button(action: {}, label: {
                    HStack {
                        Text("Mouse Keys")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                })
                Toggle("Show Onscreen Keyboard", isOn: $showOnscreenKeyboardEnabled)
                Toggle("Always Show Menu", isOn: $alwaysShowMenuEnabled)
            }, header: {
                Text("Pointer Devices")
            }, footer: {
                Text("\(alwaysShowMenuEnabled ? "Show the AssistiveTouch menu" : "The AssistiveTouch menu will be hidden") when a pointer device is connected.")
            })
            
            Section(content: {
                Toggle("Perform Touch Gestures", isOn: $performTouchGesturesEnabled)
            }, footer: {
                Text("Simulate a finger when performing gestures with a pointer device. When enabled, apps may recognize some gestures differently. For example, scrolling may be preferred over text selected.")
            })
            
            Section(content: {
                Toggle("Use Game Controller", isOn: $useGameControllerEnabled)
            }, footer: {
                Text("Allow AssistiveTouch to be controlled by Game Controllers.\n\n\t[Learn more...](#)")
            })
            
            Section(content: {
                Group {
                    Slider(value: $trackingSensitivity,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "tortoise.fill"),
                           maximumValueLabel: Image(systemName: "hare.fill"),
                           label: { Text("Speaking Rate") }
                    )
                }
                .imageScale(.large)
            }, header: {
                Text("Tracking Sensitivity")
            })
        }
    }
}

#Preview {
    NavigationStack {
        AssistiveTouchView()
    }
}
