//
//  SoundView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Switches > Add New Switch > Sound
//

import SwiftUI

struct SoundView: View {
    // Variables
    let sounds = ["Click", "Cluck", "E-sound", "Eh", "K-sound", "La", "Muh", "Oo", "Pop", "P-sound", "Sh",  "S-sound", "T-sound", "Uh"]
    
    var body: some View {
        CustomList(title: "Sound") {
            Section {
                Button("Practice") {}
            } footer: {
                Text("Practice sounds before assigning one to an action.")
            }
            
            Section {
                ForEach(sounds, id: \.self) { sound in
                    NavigationLink(sound, destination: ActionsView())
                }
            } footer: {
                Text("Use Switch Control with voiced and voiceless sounds.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        SoundView()
    }
}
