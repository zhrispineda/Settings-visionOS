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
            Section {
                Toggle("Braille Alert Messages", isOn: $brailleAlertMessagesEnabled)
            } footer: {
                Text("When enabled, your Braille display will show an alert message for the duration specified. If not enabled, alert messages will not be displayed.")
            }
            
            if brailleAlertMessagesEnabled {
                Section {
                    Stepper(
                        value: $duration,
                        in: 0.50...20.00,
                        step: 0.50
                    ) {
                        HStack {
                            Text("\(duration, specifier: "%.2f")")
                                .frame(width: 50, alignment: .leading)
                            Text(duration == 1.00 ? "Second" : "Seconds")
                                .foregroundStyle(.secondary)
                        }
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
    NavigationStack {
        BrailleAlertMessagesView()
    }
}
