//
//  HoldDurationView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Hold Duration
//

import SwiftUI

struct HoldDurationView: View {
    // Variables
    @State private var holdDurationEnabled = false
    @State private var time = 0.10
    
    var body: some View {
        CustomList(title: "Hold Duration") {
            Section(content: {
                Toggle("Hold Duration", isOn: $holdDurationEnabled.animation())
            }, footer: {
                Text("The duration your input device must be held before a press is recognized.\n\nThis duration must be less than the Auto Tap time so that a double input press can be used.")
            })
            
            if holdDurationEnabled {
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
                    .disabled(time <= 0.101)
                    Button(action: {
                        time += 0.05
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .secondary.opacity(0.3))
                    })
                    .buttonStyle(.plain)
                    .disabled(time > 9.99)
                }
            }
        }
    }
}

#Preview {
    HoldDurationView()
}
