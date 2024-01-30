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
                    HStack(spacing: 15) {
                        Text("\(time, specifier: "%.2f")")
                        Text("\(time == 1.00 ? "Second" : "Seconds")")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Button(action: {
                            time -= 0.05
                        }, label: {
                            Image(systemName: "minus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(time < 0.21)
                        Button(action: {
                            time += 0.05
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(time > 7.99)
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
