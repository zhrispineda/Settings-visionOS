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
            Section {
                Toggle("Hold Duration", isOn: $holdDurationEnabled.animation())
            } footer: {
                Text("The duration your input device must be held before a press is recognized.\n\nThis duration must be less than the Auto Tap time so that a double input press can be used.")
            }
            
            if holdDurationEnabled {
                Stepper(
                    value: $time,
                    in: 0.10...10.00,
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
        }
    }
}

#Preview {
    HoldDurationView()
}
