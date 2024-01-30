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
    IgnoreRepeatView()
}
