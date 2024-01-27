//
//  BrailleAlertMessagesView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Braille Alert Messages
//

import SwiftUI

struct BrailleAlertMessagesView: View {
    // Variables
    @State private var brailleAlertMessagesEnabled = true
    @State private var duration = 3.00
    @State private var showUntilDismissedEnabled = false
    
    var body: some View {
        CustomList(title: "Braille Alert Messages") {
            Section(content: {
                Toggle("Braille Alert Messages", isOn: $brailleAlertMessagesEnabled)
            }, footer: {
                Text("When enabled, your Braille display will show an alert message for the duration specified. If not enabled, alert messages will not be displayed.")
            })
            
            if brailleAlertMessagesEnabled {
                Section {
                    HStack(spacing: 15) {
                        Text("\(duration, specifier: "%.2f")")
                        Text("\(duration == 1.00 ? "Second" : "Seconds")")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Button(action: {
                            duration -= 0.50
                        }, label: {
                            Image(systemName: "minus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .gray.opacity(0.6))
                        })
                        .buttonStyle(.plain)
                        .disabled(duration == 0.50)
                        Button(action: {
                            duration += 0.50
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.extraLargeTitle2)
                                .fontWeight(.medium)
                                .foregroundStyle(.white, .gray.opacity(0.6))
                        })
                        .buttonStyle(.plain)
                        .disabled(duration == 20.00)
                    }
                }
            }
            
            Section {
                Toggle("Show until Dismissed", isOn: $showUntilDismissedEnabled)
            }
        }
    }
}

#Preview {
    BrailleAlertMessagesView()
}
