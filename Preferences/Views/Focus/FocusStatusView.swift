//
//  FocusStatusView.swift
//  Preferences
//
//  Settings > Focus > Focus Status
//

import SwiftUI

struct FocusStatusView: View {
    var body: some View {
        List {
            Section {} footer: {
                Text("\u{201C}Share Across Devices\u{201D} must be turned on to share your Focus state to this device.")
            }
            
            Section {
                Toggle("Share Focus Status", isOn: .constant(true))
            } footer: {
                Text("When a Focus is on, apps that you allow can show that you have notifications silenced.")
            }
            .disabled(true)
            
            Section {
                Toggle("Do Not Disturb", isOn: .constant(true))
                Toggle("Mindfulness", isOn: .constant(true))
                Toggle("Personal", isOn: .constant(true))
                Toggle("Sleep", isOn: .constant(true))
                Toggle("Work", isOn: .constant(true))
            } header: {
                Text("Share From")
            } footer: {
                Text("Customize which Focus profiles can share that you have notifications silenced.")
            }
            .disabled(true)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("Focus Status")
                    .font(.title2)
            }
        }
    }
}

#Preview {
    NavigationStack {
        FocusStatusView()
    }
}
