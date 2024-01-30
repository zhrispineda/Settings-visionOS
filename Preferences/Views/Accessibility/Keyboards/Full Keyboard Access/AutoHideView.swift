//
//  AutoHideView.swift
//  Preferences
//
//  Settings > Accessibility > Keyboards > Full Keyboard Access > Auto-Hide
//

import SwiftUI

struct AutoHideView: View {
    // Variables
    @State private var autoHideEnabled = true
    @State private var time = 15.0
    
    var body: some View {
        CustomList(title: "Auto-Hide") {
            Section(content: {
                Toggle("Auto-Hide", isOn: $autoHideEnabled.animation())
            }, footer: {
                Text("The time it takes for focus to disappear due to inactivity.")
            })
            
            if autoHideEnabled {
                Section {
                    HStack(spacing: 15) {
                        Text("\(time, specifier: "%.0f")")
                        Text("\(time == 1.00 ? "Second" : "Seconds")")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Button(action: {
                            time -= 1.00
                        }, label: {
                            Image(systemName: "minus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(time < 1.01)
                        Button(action: {
                            time += 1.00
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(time > 59.99)
                    }
                }
            }
        }
    }
}

#Preview {
    AutoHideView()
}
