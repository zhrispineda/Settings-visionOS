//
//  GuidedAccessView.swift
//  Preferences
//
//  Settings > Accessibility > Guided Access
//

import SwiftUI

struct GuidedAccessView: View {
    // Variables
    @State private var guidedAccessEnabled = false
    @State private var accessibilityShortcutEnabled = false
    
    var body: some View {
        CustomList(title: "Guided Access") {
            Section(content: {
                Toggle("Guided Access", isOn: $guidedAccessEnabled.animation())
            }, footer: {
                Text("Guided Access keeps the \(UIDevice().name) in a single app, and allows you to control which features are available. To start Guided Access, triple-press the Digital Crown in the app you want to use.")
            })
            
            if guidedAccessEnabled {
                Section {
                    NavigationLink("Passcode Settings", destination: PasscodeSettingsView())
                }
                
                Section {
                    NavigationLink("Time Limits", destination: TimeLimitsView())
                }
                
                Section(content: {
                    Toggle("Accessibility Shortcut", isOn: $accessibilityShortcutEnabled)
                }, footer: {
                    Text("When you triple-press the Digital Crown during a Guided Access session, Accessibility Shortcut settings will be displayed.")
                })
            }
        }
    }
}

#Preview {
    NavigationStack {
        GuidedAccessView()
    }
}
