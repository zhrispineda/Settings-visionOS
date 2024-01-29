//
//  SwitchControlView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control
//

import SwiftUI

struct SwitchControlView: View {
    // Variables
    @State private var switchControlEnabled = false
    @State private var showingSwitchControlDisableAlert = false
    @State private var scanSameKeyAfterTapEnabled = false
    @State private var alwaysTapKeyboardKeysEnabled = false
    @State private var soundEffectsEnabled = false
    @State private var groupItemsEnabled = true
    @State private var largeCursorEnabled = false
    
    var body: some View {
        CustomList(title: "Switch Control") {
            Section(content: {
                Toggle("Switch Control", isOn: $switchControlEnabled)
                    .alert("Important", isPresented: $showingSwitchControlDisableAlert) {
                        Button("Yes") {}
                        Button("Cancel", role: .cancel) { switchControlEnabled = true }
                    } message: {
                        Text("Are you sure you want to turn off Switch Control?")
                    }
                    .onChange(of: switchControlEnabled) {
                        showingSwitchControlDisableAlert = !switchControlEnabled
                    }
            }, footer: {
                Text("Switch Control allows you to use your Apple Vision Pro by sequentially highlighting items on the screen that can be activated through an adaptive accessory.")
            })
            
            Section {
                ListRowNavigationLabel(title: "Switches", subtitle: "0", content: SwitchesView())
                ListRowNavigationLabel(title: "Recipes", subtitle: "2", content: EmptyView())
            }
            
            Section {
                ListRowNavigationLabel(title: "Scanning Style", subtitle: "Auto", content: EmptyView())
            }
            
            Section(content: {
                ListRowNavigationLabel(title: "Auto Scanning Time", subtitle: "1s", content: EmptyView())
                ListRowNavigationLabel(title: "Pause on First Item", subtitle: "Off", content: EmptyView())
                ListRowNavigationLabel(title: "Loops", subtitle: "4", content: EmptyView())
                ListRowNavigationLabel(title: "Move Repeat", subtitle: "Off", content: EmptyView())
                ListRowNavigationLabel(title: "Long Press", subtitle: "Off", content: EmptyView())
            }, header: {
                Text("Timing")
            })
            
            Section {
                ListRowNavigationLabel(title: "Tap Behavior", subtitle: "Default", content: EmptyView())
                ListRowNavigationLabel(title: "Focused Item After Tap", subtitle: "First", content: EmptyView())
            }
            
            Section(content: {
                Toggle("Scan Same Key After Tap", isOn: $scanSameKeyAfterTapEnabled)
                Toggle("Always Tap Keyboard Keys", isOn: $alwaysTapKeyboardKeysEnabled)
            }, header: {
                Text("Keyboard")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Hold Duration", subtitle: "Off", content: EmptyView())
                ListRowNavigationLabel(title: "Ignore Repeat", subtitle: "Off", content: EmptyView())
            }, header: {
                Text("Switch Stabilization")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Gliding Cursor", subtitle: "Refined", content: EmptyView())
            }, header: {
                Text("Point Scanning")
            })
            
            Section(content: {
                Toggle("Sound Effects", isOn: $soundEffectsEnabled)
                ListRowNavigationLabel(title: "Speech", subtitle: "Off", content: EmptyView())
            }, header: {
                Text("Audio")
            })
            
            Section {
                NavigationLink("Menu Items", destination: {})
            }
            
            Section(content: {
                Toggle("Group Items", isOn: $groupItemsEnabled)
            }, footer: {
                Text("Groups items for faster navigation.")
            })
            
            Section(content: {
                Toggle("Large Cursor", isOn: $largeCursorEnabled)
                ListRowNavigationLabel(title: "Cursor Color", subtitle: "Blue", content: EmptyView())
            }, header: {
                Text("Visual")
            })
            
            Section {
                ListRowNavigationLabel(title: "Saved Gestures", subtitle: "None", content: EmptyView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        SwitchControlView()
    }
}
