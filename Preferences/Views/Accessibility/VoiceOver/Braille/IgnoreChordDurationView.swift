//
//  IgnoreChordDurationView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Ignore Chord Duration
//

import SwiftUI

struct IgnoreChordDurationView: View {
    // Variables
    @State private var duration = 0.30
    
    var body: some View {
        CustomList(title: "Ignore Chord Duration") {
            Section(content: {
                HStack(spacing: 15) {
                    Text("\(duration, specifier: "%.2f")")
                    Text("\(duration == 1.00 ? "Second" : "Seconds")")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Button(action: {
                        duration -= 0.10
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.6))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration < 0.01)
                    Button(action: {
                        duration += 0.10
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .gray.opacity(0.6))
                    })
                    .buttonStyle(.plain)
                    .disabled(duration > 0.99)
                }
            }, header: {
                Text("Ignore Chord Duration")
            }, footer: {
                Text("The amount of time required before subsequent key presses will be recognized as braille chords.")
            })
        }
    }
}

#Preview {
    IgnoreChordDurationView()
}
