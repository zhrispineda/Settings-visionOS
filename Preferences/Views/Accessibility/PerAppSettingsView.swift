//
//  PerAppSettingsView.swift
//  Preferences
//
//  Settings > Accessibility > Per-App Settings
//

import SwiftUI

struct PerAppSettingsView: View {
    // Variables
    
    var body: some View {
        CustomList(title: "Per-App Settings") {
            Section("App Customization") {
                Button("Add App") {}
            }
        }
    }
}

#Preview {
    PerAppSettingsView()
}
