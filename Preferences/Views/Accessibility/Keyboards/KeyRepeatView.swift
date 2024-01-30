//
//  KeyRepeatView.swift
//  Preferences
//
//  Settings > Accessibility > Keyboards > Key Repeat
//

import SwiftUI

struct KeyRepeatView: View {
    // Variables
    @State private var keyRepeatEnabled = true
    @State private var keyRepeatInterval = 0.10
    @State private var delayUntilRepeat = 0.40
    
    var body: some View {
        CustomList(title: "Key Repeat") {
            Section(content: {
                Toggle("Key Repeat", isOn: $keyRepeatEnabled.animation())
            }, footer: {
                Text("Disable Key Repeat to prevent characters from being entered multiple times with a single key press.")
            })
            
            if keyRepeatEnabled {
                Section(content: {
                    HStack(spacing: 15) {
                        Text("\(keyRepeatInterval, specifier: "%.2f")")
                        Text("\(keyRepeatInterval == 1.00 ? "Second" : "Seconds")")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Button(action: {
                            keyRepeatInterval -= 0.01
                        }, label: {
                            Image(systemName: "minus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(keyRepeatInterval < 0.031)
                        Button(action: {
                            keyRepeatInterval += 0.01
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(keyRepeatInterval > 1.99)
                    }
                }, header: {
                    Text("Key Repeat Interval")
                })
                
                Section(content: {
                    HStack(spacing: 15) {
                        Text("\(delayUntilRepeat, specifier: "%.2f")")
                        Text("\(delayUntilRepeat == 1.00 ? "Second" : "Seconds")")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Button(action: {
                            delayUntilRepeat -= 0.01
                        }, label: {
                            Image(systemName: "minus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(delayUntilRepeat < 0.201)
                        Button(action: {
                            delayUntilRepeat += 0.01
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .secondary.opacity(0.3))
                        })
                        .buttonStyle(.plain)
                        .disabled(delayUntilRepeat > 1.99)
                    }
                }, header: {
                    Text("Delay Until Repeat")
                })
            }
        }
    }
}

#Preview {
    KeyRepeatView()
}
