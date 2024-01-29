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
                HStack(spacing: 15) {
                    Text("\(intervalTime, specifier: "%.2f")")
                    Text("\(intervalTime == 1.00 ? "Second" : "Seconds")")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Button(action: {
                        intervalTime -= 0.20
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.6))
                    })
                    .buttonStyle(.plain)
                    .disabled(intervalTime < 0.01)
                    Button(action: {
                        intervalTime += 0.20
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.6))
                    })
                    .buttonStyle(.plain)
                    .disabled(intervalTime > 3.99)
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
