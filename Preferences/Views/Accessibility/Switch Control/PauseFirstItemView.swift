//
//  PauseFirstItemView.swift
//  Preferences
//
//  Created by Chris on 1/29/24.
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
                        .disabled(time < 0.031)
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
            }
        }
    }
}

#Preview {
    PauseFirstItemView()
}
