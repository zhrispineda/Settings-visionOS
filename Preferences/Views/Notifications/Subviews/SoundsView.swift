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
        List {
            Section {
                // This view is mostly non-functional in the current beta of visionOS (21N305)
                Button(action: {}, label: {
                    HStack {
                        Text("Haptics")
                        Spacer()
                        Text("Default")
                            .foregroundStyle(.secondary)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                })
            }
            
            Section {
                Button(action: {}, label: { Label("Reflection (Default)", systemImage: "checkmark") })
                ForEach(soundNames, id: \.self) { sound in
                    Button(action: {}, label: { Label(sound, systemImage: "empty") })
                }
                NavigationLink(destination: ClassicSoundsView(), label: {
                    Label("Classic", systemImage: "empty")
                })
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Sounds")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    SoundsView()
}
