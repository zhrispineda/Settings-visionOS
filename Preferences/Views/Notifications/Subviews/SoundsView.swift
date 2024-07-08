//
//  SoundsView.swift
//  Preferences
//
//  Settings > Notifications > FaceTime > Sounds
//

import SwiftUI

struct SoundsView: View {
    // Variables
    let soundNames = ["Arpeggio", "Breaking", "Canopy", "Chalet", "Chirp", "Daybreak", "Departure", "Dollop", "Journey", "Kettle", "Mercury", "Milky Way", "Quad", "Radial", "Scavenger", "Seedling", "Shelter", "Sprinkles", "Steps", "Storytime", "Tease", "Tilt", "Unfold", "Valley"]
    
    var body: some View {
        CustomList(title: "Sounds") {
            Section {
                Button {} label: {
                    HStack {
                        Text("Haptics")
                        Spacer()
                        Text("Default")
                            .foregroundStyle(.secondary)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                }
            }
            
            Section {
                Button {} label: { Label("Reflection (Default)", systemImage: "checkmark") }
                ForEach(soundNames, id: \.self) { sound in
                    Button {} label: { Label(sound, systemImage: "empty") }
                }
                NavigationLink(destination: ClassicSoundsView()) {
                    Label("Classic", systemImage: "empty")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SoundsView()
    }
}
