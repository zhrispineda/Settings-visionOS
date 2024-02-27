//
//  LongPressView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Long Press
//

import SwiftUI

struct LongPressView: View {
    // Variables
    @State private var longPressEnabled = false
    @State private var time = 1.00
    @State private var pauseScanning = true
    
    var body: some View {
        CustomList(title: "Long Press") {
            Section(content: {
                Toggle("Long Press", isOn: $longPressEnabled.animation())
            }, footer: {
                Text("Use Long Press to add another action to a switch is activated when you hold the switch for longer than the duration specified below.")
            })
            
            if longPressEnabled {
                Section {
                    Stepper(
                        value: $time,
                        in: 0.20...8.00,
                        step: 0.05
                    ) {
                        HStack {
                            Text("\(time, specifier: "%.2f")")
                                .frame(width: 50, alignment: .leading)
                            Text(time == 1.00 ? "Second" : "Seconds")
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                
                Section(content: {
                    Toggle("Pause Scanning", isOn: $pauseScanning)
                }, footer: {
                    Text("Pause Switch Control Scanning when a long press enabled switch is held down.")
                })
            }
        }
    }
}

#Preview {
    LongPressView()
}
