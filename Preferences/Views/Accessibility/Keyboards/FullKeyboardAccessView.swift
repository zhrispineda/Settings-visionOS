//
//  FullKeyboardAccessView.swift
//  Preferences
//
//  Settings > Accessibility > Keyboards > Full Keyboard Access
//

import SwiftUI

struct FullKeyboardAccessView: View {
    // Variables
    @State private var fullKeyboardAccessEnabled = false
    @State private var showingKeyboardAccessOffAlert = false
    @State private var increaseSizeEnabled = false
    @State private var highContrastEnabled = false
    
    var body: some View {
        CustomList(title: "Full Keyboard Access") {
            Section {
                Toggle("Full Keyboard Access", isOn: $fullKeyboardAccessEnabled)
                    .alert("Important", isPresented: $showingKeyboardAccessOffAlert) {
                        Button("Yes") {}
                        Button("Cancel", role: .cancel) { fullKeyboardAccessEnabled = true }
                    } message: {
                        Text("Are you sure you want to turn off Full Keyboard Access?")
                    }
                    .onChange(of: fullKeyboardAccessEnabled) {
                        showingKeyboardAccessOffAlert = !fullKeyboardAccessEnabled
                    }
            } footer: {
                Text("""
                    **Use an external keyboard to control your \(UIDevice().name).**
                    \u{2022} To show Help: Tab H
                    \u{2022} To move forward: Tab
                    \u{2022} To move backward: \u{21E7} Tab
                    \u{2022} To activate: Space
                    \u{2022} To go Home: Fn H
                    \u{2022} To use the Control Center: Fn C
                    \u{2022} To use the Notification Center: Fn N
                    """)
            }
            
            Section {
                NavigationLink("Commands", destination: KeyboardCommandsView())
            }
            
            Section("Appearance") {
                ListRowNavigationLabel(title: "Auto-Hide", subtitle: "15s", content: AutoHideView())
                Toggle("Increase Size", isOn: $increaseSizeEnabled)
                Toggle("High Contrast", isOn: $highContrastEnabled)
                ListRowNavigationLabel(title: "Color", subtitle: "Default", content: KeyboardColorView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        FullKeyboardAccessView()
    }
}
