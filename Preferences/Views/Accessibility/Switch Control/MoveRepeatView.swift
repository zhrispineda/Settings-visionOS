//
//  MoveRepeatView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Move Repeat
//

import SwiftUI

struct MoveRepeatView: View {
    // Variables
    @State private var moveRepeatEnabled = false
    @State private var time = 0.50
    
    var body: some View {
        CustomList(title: "Move Repeat") {
            Section(content: {
                Toggle("Move Repeat", isOn: $moveRepeatEnabled.animation())
            }, footer: {
                Text("The delay before \u{2018}Move To Next/Previous Item\u{2019} is repeated while a switch remains pressed.")
            })
            
            if moveRepeatEnabled {
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
                        .disabled(time < 0.051)
                        Button(action: {
                            time += 0.05
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(time > 24.99)
                    }
                }
            }
        }
    }
}

#Preview {
    MoveRepeatView()
}
