//
//  AlertTonesView.swift
//  Preferences
//
//  Settings > Accessibility > Sound Recognition > Sounds > [Sound] > Alert Tones
//

import SwiftUI

struct AlertTonesView: View {
    // Variables
    let soundNames = ["Antic", "Cheers", "Chord", "Droplet", "Handoff", "Milestone", "Note", "Passage", "Portal", "Rattle", "Rebound", "Slide", "Welcome"]
    @State private var selected = "Tri-tone"
    
    var body: some View {
        List {
            Section {
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
                ForEach(soundNames, id: \.self) { sound in
                    Button(action: {
                        selected = sound
                    }, label: {
                        Label(sound, systemImage: selected == sound ? "checkmark" : "")
                    })
                }
                NavigationLink(destination: ClassicTonesView(), label: {
                    Label("Classic", systemImage: "empty")
                })
            }
        }
        .navigationTitle("Sounds")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Sounds")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40) // Adjust for back button if parent view or not
            })
        }
    }
}

#Preview {
    AlertTonesView()
}
