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
                Stepper(
                    value: $duration,
                    in: 0.00...1.00,
                    step: 0.10
                ) {
                    HStack {
                        Text("\(duration, specifier: "%.2f")")
                            .frame(width: 50, alignment: .leading)
                        Text(duration == 1.00 ? "Second" : "Seconds")
                            .foregroundStyle(.secondary)
                    }
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
