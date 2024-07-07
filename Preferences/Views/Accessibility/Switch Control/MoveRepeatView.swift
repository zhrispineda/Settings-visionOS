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
            Section {
                Toggle("Move Repeat", isOn: $moveRepeatEnabled.animation())
            } footer: {
                Text("The delay before \u{2018}Move To Next/Previous Item\u{2019} is repeated while a switch remains pressed.")
            }
            
            if moveRepeatEnabled {
                Section {
                    Stepper(
                        value: $time,
                        in: 0.50...25.00,
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
}

#Preview {
    MoveRepeatView()
}
