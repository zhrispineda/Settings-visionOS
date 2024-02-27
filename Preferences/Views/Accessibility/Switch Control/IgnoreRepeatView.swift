//
//  IgnoreRepeatView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Ignore Repeat
//

import SwiftUI

struct IgnoreRepeatView: View {
    // Variables
    @State private var ignoreRepeatEnabled = false
    @State private var time = 0.10
    
    var body: some View {
        CustomList(title: "Ignore Repeat") {
            Section(content: {
                Toggle("Ignore Repeat", isOn: $ignoreRepeatEnabled.animation())
            }, footer: {
                Text("The duration in which multiple presses of input are treated as a single input.\n\nThis duration must be less than the Auto Tap time so that a double input press can be used.")
            })
            
            if ignoreRepeatEnabled {
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
    IgnoreRepeatView()
}
