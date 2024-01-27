//
//  AutoAdvanceDurationView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Auto Advance Duration
//

import SwiftUI

struct AutoAdvanceDurationView: View {
    // Variables
    @State private var duration = 5.00
    
    var body: some View {
        CustomList(title: "Auto Advance Duration") {
            Section(content: {
                HStack(spacing: 15) {
                    Text("\(duration, specifier: "%.2f")")
                    Text("\(duration == 1.00 ? "Second" : "Seconds")")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Button(action: {
                        duration -= 0.100
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.6))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration < 0.51)
                    Button(action: {
                        duration += 0.100
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.6))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration > 19.99)
                }
            }, header: {
                Text("Auto Advance Duration")
            }, footer: {
                Text("Enabling Auto Advance will pan a Braille display repeatedly. Adjust Auto Advance Duration to your preferred reading speed.")
            })
        }
    }
}

#Preview {
    AutoAdvanceDurationView()
}
