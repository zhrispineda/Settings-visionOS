//
//  RecognitionSoundsView.swift
//  Preferences
//
//  Settings > Accessibility > Sound Recognition > Sounds
//

import SwiftUI

struct RecognitionSoundsView: View {
    // Variables
    let alarmSounds = ["Fire", "Siren", "Smoke"]
    let animalSounds = ["Cat", "Dog"]
    let householdSounds = ["Appliances", "Car Horn", "Door Bell", "Door Knock", "Glass Breaking", "Kettle", "Water Running"]
    let peopleSounds = ["Baby Crying", "Coughing", "Shouting"]
    
    var body: some View {
        CustomList(title: "Sounds", editEnabled: true) {
            Section("Alarms") {
                ForEach(alarmSounds, id: \.self) { sound in
                    ListRowNavigationLabel(title: sound, subtitle: "Off", content: SoundDetailView(title: sound))
                }
            }
            
            Section("Animals") {
                ForEach(animalSounds, id: \.self) { sound in
                    ListRowNavigationLabel(title: sound, subtitle: "Off", content: SoundDetailView(title: sound))
                }
            }
            
            Section("Household") {
                ForEach(householdSounds, id: \.self) { sound in
                    ListRowNavigationLabel(title: sound, subtitle: "Off", content: SoundDetailView(title: sound))
                }
            }
            
            Section("People") {
                ForEach(peopleSounds, id: \.self) { sound in
                    ListRowNavigationLabel(title: sound, subtitle: "Off", content: SoundDetailView(title: sound))
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        RecognitionSoundsView()
    }
}
