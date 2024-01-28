//
//  RotorView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Rotor
//

import SwiftUI

struct RotorView: View {
    // Variables
    @State private var changeRotorItemEnabled = true
    @State private var editAppsHomeScreenEnabled = true
    
    var body: some View {
        CustomList(title: "Rotor") {
            Section {
                NavigationLink("Rotor Items", destination: RotorItemsView())
            }
            
            Section(content: {
                Toggle("Change Rotor with Item", isOn: $changeRotorItemEnabled)
            }, footer: {
                Text("Changes the selected rotor based on the VoiceOver focused item.")
            })
            
            Section(content: {
                Toggle("Edit Apps on Home Screen", isOn: $editAppsHomeScreenEnabled)
                NavigationLink("Direct Touch Apps", destination: DirectTouchAppsView())
            }, footer: {
                Text("Direct Touch allows VoiceOver to control an app directly without requiring more interaction.")
            })
        }
    }
}

#Preview {
    NavigationStack {
        RotorView()
    }
}
