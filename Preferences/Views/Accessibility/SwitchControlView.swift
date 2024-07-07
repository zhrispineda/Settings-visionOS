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
            Section {
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
            } footer: {
                Text("Switch Control allows you to use your \(UIDevice().name) by sequentially highlighting items on the screen that can be activated through an adaptive accessory.")
            }
            
            Section {
                ListRowNavigationLabel(title: "Switches", subtitle: "0", content: SwitchesView())
                ListRowNavigationLabel(title: "Recipes", subtitle: "2", content: RecipesView())
            }
            
            Section {
                ListRowNavigationLabel(title: "Scanning Style", subtitle: "Auto", content: ScanningStyleView())
            }
            
            Section("Timing") {
                ListRowNavigationLabel(title: "Auto Scanning Time", subtitle: "1s", content: AutoScanningTimeView())
                ListRowNavigationLabel(title: "Pause on First Item", subtitle: "Off", content: PauseFirstItemView())
                ListRowNavigationLabel(title: "Loops", subtitle: "4", content: LoopsView())
                ListRowNavigationLabel(title: "Move Repeat", subtitle: "Off", content: MoveRepeatView())
                ListRowNavigationLabel(title: "Long Press", subtitle: "Off", content: LongPressView())
            }
            
            Section {
                ListRowNavigationLabel(title: "Tap Behavior", subtitle: "Default", content: TapBehaviorView())
                ListRowNavigationLabel(title: "Focused Item After Tap", subtitle: "First", content: FocusedItemAfterTapView())
            }
            
            Section("Keyboard") {
                Toggle("Scan Same Key After Tap", isOn: $scanSameKeyAfterTapEnabled)
                Toggle("Always Tap Keyboard Keys", isOn: $alwaysTapKeyboardKeysEnabled)
            }
            
            Section("Switch Stabilization") {
                ListRowNavigationLabel(title: "Hold Duration", subtitle: "Off", content: HoldDurationView())
                ListRowNavigationLabel(title: "Ignore Repeat", subtitle: "Off", content: IgnoreRepeatView())
            }
            
            Section("Point Scanning") {
                ListRowNavigationLabel(title: "Gliding Cursor", subtitle: "Refined", content: GlidingCursorView())
            }
            
            Section("Audio") {
                Toggle("Sound Effects", isOn: $soundEffectsEnabled)
                ListRowNavigationLabel(title: "Speech", subtitle: "Off", content: SwitchControlSpeechView())
            }
            
            Section {
                NavigationLink("Menu Items", destination: MenuItemsView())
            }
            
            Section {
                Toggle("Group Items", isOn: $groupItemsEnabled)
            } footer: {
                Text("Groups items for faster navigation.")
            }
            
            Section("Visual") {
                Toggle("Large Cursor", isOn: $largeCursorEnabled)
                ListRowNavigationLabel(title: "Cursor Color", subtitle: "Blue", content: CursorColorView())
            }
            
            Section {
                ListRowNavigationLabel(title: "Saved Gestures", subtitle: "None", content: SavedGesturesView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        SwitchControlView()
    }
}
