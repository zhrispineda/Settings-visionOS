//
//  KeyboardInteractionTimeView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Typing > Keyboard Interaction Time
//

import SwiftUI

struct KeyboardInteractionTimeView: View {
    // Variables
    @State private var intervalTime = 1.00
    
    var body: some View {
        CustomList(title: "Keyboard Interaction Time") {
            Section(content: {
                Stepper(
                    value: $intervalTime,
                    in: 0.00...4.00,
                    step: 0.20
                ) {
                    HStack {
                        Text("\(intervalTime, specifier: "%.2f")")
                            .frame(width: 50, alignment: .leading)
                        Text(intervalTime == 1.00 ? "Second" : "Seconds")
                            .foregroundStyle(.secondary)
                    }
                }
            }, header: {
                Text("Keyboard Interaction Time")
            }, footer: {
                Text("The amount of time to wait before VoiceOver can start Slide to Type or make use of alternative keys on the software keyboard.")
            })
        }
    }
}

#Preview {
    KeyboardInteractionTimeView()
}
