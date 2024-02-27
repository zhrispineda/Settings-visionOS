//
//  PauseFirstItemView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Pause on First Item
//

import SwiftUI

struct PauseFirstItemView: View {
    // Variables
    @State private var pauseFirstItemEnabled = false
    @State private var time = 0.50
    
    var body: some View {
        CustomList(title: "Pause on First Item") {
            Section(content: {
                Toggle("Pause on First Item", isOn: $pauseFirstItemEnabled.animation())
            }, footer: {
                Text("The duration of time auto scanning will wait after input is pressed.")
            })
            
            if pauseFirstItemEnabled {
                Section {
                    Stepper(
                        value: $time,
                        in: 0.03...8.00,
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
    PauseFirstItemView()
}
