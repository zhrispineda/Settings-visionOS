//
//  SoundRecognitionView.swift
//  Preferences
//
//  Settings > Accessibility > Sound Recognition
//

import SwiftUI

struct SoundRecognitionView: View {
    // Variables
    @State private var soundRecognitionEnabled = false
    
    var body: some View {
        CustomList(title: "Sound Recognition") {
            Section {
                Toggle("Sound Recognition", isOn: $soundRecognitionEnabled)
                Text("26.3 MB \(soundRecognitionEnabled ? "Used" : "Required")")
                    .foregroundStyle(.tertiary)
            } footer: {
                VStack {
                    Text("Your \(UIDevice().name) will continously listen for certain sounds, and using on-device intelligence, will notify you when sounds may be recognized.")
                    Text("\nSound Recognition should not be relied upon in circumstances where you may be harmed or injured, in high-risk emergency situations, or for navigation.")
                }
            }
            
            if soundRecognitionEnabled {
                Section {
                    ListRowNavigationLabel(title: "Sounds", subtitle: "None", content: RecognitionSoundsView())
                } footer: {
                    Text("Choose which sounds to recognize.")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SoundRecognitionView()
    }
}
