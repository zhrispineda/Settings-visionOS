//
//  ClassicTonesView.swift
//  Preferences
//
//  Settings > Accessibility > Sound Recognition > Sounds > [Sound] > Alert Tones > Classic
//

import SwiftUI

struct ClassicTonesView: View {
    // Variables
    let soundNames = ["Tri-tone (Default)", "Alert", "Anticipate", "Aurora", "Bamboo", "Bell", "Bloom", "Calypso", "Chime", "Choo Choo", "Circles", "Complete", "Descent", "Ding", "Electronic", "Fanfare", "Glass", "Hello", "Horn", "Input", "Keys", "Ladder", "Minuet", "News Flash", "Noir", "Popcorn", "Pulse", "Sherwood Forest", "Spell", "Suspense", "Swish", "Swoosh", "Synth", "Telegraph", "Tiptoes", "Tweet", "Typewriters", "Update"]
    @State private var selected = ""
    
    var body: some View {
        List(soundNames, id: \.self) { sound in
            Button(action: {
                selected = sound
            }, label: {
                Label(sound, systemImage: selected == sound ? "checkmark" : "")
            })
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: {
                Text("Classic")
                    .font(.title2)
            })
        }
    }
}

#Preview {
    ClassicTonesView()
}
