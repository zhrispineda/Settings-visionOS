//
//  CommandsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Commands
//

import SwiftUI

struct CommandsView: View {
    // Variables
    @State private var switchGestureHandednessEnabled = false
    @State private var showingResetCommandsAlert = false
    
    var body: some View {
        CustomList(title: "Commands") {
            Section {
                NavigationLink("All Commands", destination: AllCommandsView())
            }
            
            Section {
                Toggle("Switch Gesture Handedness", isOn: $switchGestureHandednessEnabled)
            } footer: {
                Text("Toggle this setting to swap gestures on your left and right hands, including custom gesture assignments.")
            }
            
            Section {
                NavigationLink("Touch Gestures", destination: TouchGesturesView())
                NavigationLink("Keyboard Shortcuts", destination: KeyboardShortcutsView())
            } footer: {
                Text("Commands are prefixed with the VoiceOver modifier key: Control + Option")
            }
            
            Section {
                Button("Reset VoiceOver Commands") {
                    showingResetCommandsAlert.toggle()
                }
                .foregroundStyle(.red)
                .alert("This will restore all\nVoiceOver gestures,\nkeyboard shortcuts and\nBraille shortcuts.", isPresented: $showingResetCommandsAlert) {
                    Button("Reset VoiceOver Commands", role: .destructive) {}
                    Button("Cancel", role: .cancel) {}
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        CommandsView()
    }
}
