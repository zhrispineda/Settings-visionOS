//
//  MenuItemsView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Menu Items
//

import SwiftUI

struct MenuItemsView: View {
    let items = ["Top Level", "Gestures", "Device", "Settings", "Media Controls"]
    let itemOptions = [
        ["Increment/Decrement", "Element Specific Actions", "Scroll", "Home", "Gestures", "Editing Operations", "Refine Selection", "Cursor Mode", "Device", "Media Controls", "Settings", "Shortcuts", "Recipes", "Dictation", "App Movement", "Move Around"],
        ["Tap", "Flick", "Pan", "Pinch", "Tap and Hold", "Drag", "Hold and Drag", "Double Tap", "Freehand", "Fingers", "Saved"],
        ["Notification Center", "Control Center", "Lock Screen", "Volume Up/Down", "Spotlight Search", "Siri", "Accessibility Shortcut", "Screenshot", "Use Other Devices", "Voice Control", "Analytics", "Restart", "Recenter Apps", "Force Quit", "Input Recovery", "Shut Down"],
        ["Speed Up/Slow Down", "Speech On/Off", "Sound On/Off", "Groups On/Off"],
        ["Previous Track", "Play/Pause", "Next Track", "Skip Backward", "Skip Forward", "Rewind", "Fast Forward"]
    ]
    
    var body: some View {
        CustomList(title: "Menu Items") {
            Section {
                ForEach(Array(items.enumerated()), id: \.offset) { index, options in
                    NavigationLink(items[index], destination: MenuItemDetailView(title: items[index], items: itemOptions[index], selected: itemOptions[index]))
                }
            } footer: {
                Text("For each of these menus, you can choose which items to include and the order in which they appear.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        MenuItemsView()
    }
}
