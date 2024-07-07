//
//  KeyRepeatView.swift
//  Preferences
//
//  Settings > Accessibility > Keyboards & Typing > Key Repeat
//

import SwiftUI

struct KeyRepeatView: View {
    // Variables
    @State private var keyRepeatEnabled = true
    @State private var keyRepeatInterval = 0.10
    @State private var delayUntilRepeat = 0.40
    
    var body: some View {
        CustomList(title: "Key Repeat") {
            Section {
                Toggle("Key Repeat", isOn: $keyRepeatEnabled.animation())
            } footer: {
                Text("Disable Key Repeat to prevent characters from being entered multiple times with a single key press.")
            }
            
            if keyRepeatEnabled {
                Section("Key Repeat Interval") {
                    Stepper(
                        value: $keyRepeatInterval,
                        in: 0.30...2.00,
                        step: 0.01
                    ) {
                        HStack {
                            Text("\(keyRepeatInterval, specifier: "%.2f")")
                                .frame(width: 50, alignment: .leading)
                            Text(keyRepeatInterval == 1.00 ? "Second" : "Seconds")
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                
                Section("Delay Until Repeat") {
                    Stepper(
                        value: $delayUntilRepeat,
                        in: 0.20...2.00,
                        step: 0.01
                    ) {
                        HStack {
                            Text("\(delayUntilRepeat, specifier: "%.2f")")
                                .frame(width: 50, alignment: .leading)
                            Text(delayUntilRepeat == 1.00 ? "Second" : "Seconds")
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        KeyRepeatView()
    }
}
