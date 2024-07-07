//
//  AlertTonesView.swift
//  Preferences
//
//  Settings > Accessibility > Sound Recognition > Sounds > [Sound] > Alert Tones
//

import SwiftUI

struct AlertTonesView: View {
    // Variables
    var title = "Sounds"
    let soundNames = ["None (Default)", "Antic", "Cheers", "Chord", "Droplet", "Handoff", "Milestone", "Note", "Passage", "Portal", "Rattle", "Rebound", "Slide", "Welcome"]
    @State var selected = "Tri-tone"
    
    var body: some View {
        List {
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
                ForEach(soundNames, id: \.self) { sound in
                    if sound == "None (Default)" {
                        if title == "Sound" {
                            Button {
                                selected = sound
                            } label: {
                                Label(sound, systemImage: selected == sound ? "checkmark" : "")
                            }
                        }
                    } else {
                        Button {
                            selected = sound
                        } label: {
                            Label(sound, systemImage: selected == sound ? "checkmark" : "")
                        }
                    }
                }
                NavigationLink(destination: ClassicTonesView()) {
                    Label("Classic", systemImage: "empty")
                }
            }
        }
        .navigationTitle(title)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(title)
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40) // Adjust for back button if parent view or not
            }
        }
    }
}

#Preview {
    NavigationStack {
        AlertTonesView()
    }
}
