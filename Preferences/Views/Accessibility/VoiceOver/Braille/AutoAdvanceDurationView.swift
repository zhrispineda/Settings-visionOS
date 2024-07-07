//
//  AutoAdvanceDurationView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Auto Advance Duration
//

import SwiftUI

struct AutoAdvanceDurationView: View {
    // Variables
    @State private var duration = 5.00
    
    var body: some View {
        CustomList(title: "Auto Advance Duration") {
            Section {
                Stepper(
                    value: $duration,
                    in: 0.50...20.00,
                    step: 0.10
                ) {
                    HStack {
                        Text("\(duration, specifier: "%.2f")")
                            .frame(width: 50, alignment: .leading)
                        Text(duration == 1.00 ? "Second" : "Seconds")
                            .foregroundStyle(.secondary)
                    }
                }
            } header: {
                Text("Auto Advance Duration")
            } footer: {
                Text("Enabling Auto Advance will pan a Braille display repeatedly. Adjust Auto Advance Duration to your preferred reading speed.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        AutoAdvanceDurationView()
    }
}
