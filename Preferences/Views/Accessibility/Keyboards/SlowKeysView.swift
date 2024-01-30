//
//  SlowKeysView.swift
//  Preferences
//
//  Settings > Accessibility > Keyboards > Slow Keys
//

import SwiftUI

struct SlowKeysView: View {
    // Variables
    @State private var slowKeysEnabled = false
    @State private var time = 0.30
    
    var body: some View {
        CustomList(title: "Slow Keys") {
            Section(content: {
                Toggle("Slow Keys", isOn: $slowKeysEnabled.animation())
            }, footer: {
                Text("Slow Keys adjusts the amount of time between when a key is pressed and when it is activated.")
            })
            
            if slowKeysEnabled {
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
                        .disabled(time < 0.101)
                        Button(action: {
                            time += 0.05
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(time > 4.99)
                    }
                }
            }
        }
    }
}

#Preview {
    SlowKeysView()
}
