//
//  KeyboardCommandsView.swift
//  Preferences
//
//  Settings > Accessibility > Keyboards > Full Keyboard Views > Commands
//

import SwiftUI

struct KeyboardCommandsView: View {
    // Variables
    @State private var showingKeyboardShortcutAlert = false
    @State private var basicShortcuts: [KeyboardShortcut] = [
        KeyboardShortcut(name: "Help", shortcut: "Tab H"),
        KeyboardShortcut(name: "Move forward", shortcut: "Tab"),
        KeyboardShortcut(name: "Move backward", shortcut: "\u{21E7} Tab"),
        KeyboardShortcut(name: "Move up", shortcut: "\u{2191}"),
        KeyboardShortcut(name: "Move down", shortcut: "\u{2193}"),
        KeyboardShortcut(name: "Move left", shortcut: "\u{2190}"),
        KeyboardShortcut(name: "Move right", shortcut: "\u{2192}"),
        KeyboardShortcut(name: "Activate", shortcut: "Space"),
        KeyboardShortcut(name: "Home", shortcut: "Fn H")
    ]
    @State private var movementShortcuts: [KeyboardShortcut] = [
        KeyboardShortcut(name: "Move forward", shortcut: "Tab"),
        KeyboardShortcut(name: "Move backward", shortcut: "\u{21E7} Tab"),
        KeyboardShortcut(name: "Move up", shortcut: "\u{2191}"),
        KeyboardShortcut(name: "Move down", shortcut: "\u{2193}"),
        KeyboardShortcut(name: "Move left", shortcut: "\u{2190}"),
        KeyboardShortcut(name: "Move right", shortcut: "\u{2192}"),
        KeyboardShortcut(name: "Move to beginning", shortcut: "Tab \u{2190}"),
        KeyboardShortcut(name: "Move to end", shortcut: "Tab \u{2192}"),
        KeyboardShortcut(name: "Move to next item", shortcut: "\u{005E} Tab"),
        KeyboardShortcut(name: "Move to previous item", shortcut: "\u{005E} \u{21E7} Tab")
    ]
    @State private var interactionShortcuts: [KeyboardShortcut] = [
        KeyboardShortcut(name: "Activate", shortcut: "Space"),
        KeyboardShortcut(name: "Go back", shortcut: "Tab B"),
        KeyboardShortcut(name: "Contextual menu", shortcut: "Tab M"),
        KeyboardShortcut(name: "Actions", shortcut: "Tab Z")
    ]
    @State private var deviceShortcuts: [KeyboardShortcut] = [
        KeyboardShortcut(name: "Home", shortcut: "Fn H"),
        KeyboardShortcut(name: "Control Center", shortcut: "Fn C"),
        KeyboardShortcut(name: "Notification Center", shortcut: "Fn N"),
        KeyboardShortcut(name: "Restart", shortcut: "\u{005E} \u{2325} \u{21E7} \u{2318} R"),
        KeyboardShortcut(name: "Siri", shortcut: "Fn S"),
        KeyboardShortcut(name: "Accessibility Shortcut", shortcut: "Tab X"),
        KeyboardShortcut(name: "Analytics", shortcut: "\u{005E} \u{2325} \u{21E7} \u{2318} \u{002E}"),
        KeyboardShortcut(name: "Pass-Through Mode", shortcut: "\u{005E} \u{2325} \u{2318} P")
    ]
    @State private var gestureShortcuts: [KeyboardShortcut] = [
        KeyboardShortcut(name: "Keyboard Gestures", shortcut: "Tab G"),
        KeyboardShortcut(name: "Touch", shortcut: ""),
        KeyboardShortcut(name: "Swipe up", shortcut: ""),
        KeyboardShortcut(name: "Swipe down", shortcut: ""),
        KeyboardShortcut(name: "Swipe left", shortcut: ""),
        KeyboardShortcut(name: "Swipe right", shortcut: ""),
        KeyboardShortcut(name: "Zoom out", shortcut: ""),
        KeyboardShortcut(name: "Zoom in", shortcut: ""),
        KeyboardShortcut(name: "Rotate left", shortcut: ""),
        KeyboardShortcut(name: "Rotate right", shortcut: ""),
        KeyboardShortcut(name: "Two finger touch", shortcut: ""),
        KeyboardShortcut(name: "Two finger swipe down", shortcut: ""),
        KeyboardShortcut(name: "Two finger swipe left", shortcut: ""),
        KeyboardShortcut(name: "Two finger swipe right", shortcut: ""),
        KeyboardShortcut(name: "Two finger swipe up", shortcut: "")
    ]
    
    var body: some View {
        CustomList(title: "Commands") {
            Section {} footer: {
                Text("Tap any command to customize its keyboard shortcut.")
            }
            
            Section("Basic") {
                ForEach($basicShortcuts) { $shortcut in
                    Button {
                        showingKeyboardShortcutAlert.toggle()
                    } label: {
                        LabeledContent(shortcut.name, value: shortcut.shortcut)
                    }
                    .alert("Keyboard Shortcut", isPresented: $showingKeyboardShortcutAlert) {
                        Button("Done") {}.disabled(true)
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Enter a key combination on your keyboard.")
                    }
                }
            }
            
            Section("Movement") {
                ForEach($movementShortcuts) { $shortcut in
                    Button {
                        showingKeyboardShortcutAlert.toggle()
                    } label: {
                        LabeledContent(shortcut.name, value: shortcut.shortcut)
                    }
                    .alert("Keyboard Shortcut", isPresented: $showingKeyboardShortcutAlert) {
                        Button("Done") {}.disabled(true)
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Enter a key combination on your keyboard.")
                    }
                }
            }
            
            Section("Interaction") {
                ForEach($interactionShortcuts) { $shortcut in
                    Button {
                        showingKeyboardShortcutAlert.toggle()
                    } label: {
                        LabeledContent(shortcut.name, value: shortcut.shortcut)
                    }
                    .alert("Keyboard Shortcut", isPresented: $showingKeyboardShortcutAlert) {
                        Button("Done") {}.disabled(true)
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Enter a key combination on your keyboard.")
                    }
                }
            }
            
            Section("Device") {
                ForEach($deviceShortcuts) { $shortcut in
                    Button {
                        showingKeyboardShortcutAlert.toggle()
                    } label: {
                        LabeledContent(shortcut.name, value: shortcut.shortcut)
                    }
                    .alert("Keyboard Shortcut", isPresented: $showingKeyboardShortcutAlert) {
                        Button("Done") {}.disabled(true)
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Enter a key combination on your keyboard.")
                    }
                }
            }
            
            Section("Gestures") {
                ForEach($gestureShortcuts) { $shortcut in
                    Button {
                        showingKeyboardShortcutAlert.toggle()
                    } label: {
                        LabeledContent(shortcut.name, value: shortcut.shortcut)
                    }
                    .alert("Keyboard Shortcut", isPresented: $showingKeyboardShortcutAlert) {
                        Button("Done") {}.disabled(true)
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Enter a key combination on your keyboard.")
                    }
                }
            }
            
            Section {
                Button("Restore Defaults") {}
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    NavigationStack {
        KeyboardCommandsView()
    }
}
