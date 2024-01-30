//
//  SwitchControlSpeech.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Speech
//

import SwiftUI

struct SwitchControlSpeechView: View {
    // Variables
    @State private var speechEnabled = false
    @State private var speakingRate = 0.50
    @State private var speakItemAttributesEnabled = true
    @State private var pauseWhileSpeakingEnabled = false
    
    var body: some View {
        CustomList(title: "Speech") {
            Section {
                Toggle("Speech", isOn: $speechEnabled)
            }
            
            Section {
                ListRowNavigationLabel(title: "Voices", subtitle: "Samantha", content: VoiceView(title: "English"))
            }
            
            Section(content: {
                Group {
                    Slider(value: $speakingRate,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "tortoise.fill"),
                           maximumValueLabel: Image(systemName: "hare.fill"),
                           label: { Text("Speaking Rate") }
                    )
                }
                .imageScale(.large)
            }, header: {
                Text("Speaking Rate")
            })
            
            Section {
                Toggle("Speak Item Attributes", isOn: $speakItemAttributesEnabled)
                Toggle("Pause while Speaking", isOn: $pauseWhileSpeakingEnabled)
            }
        }
    }
}

#Preview {
    NavigationStack {
        SwitchControlSpeechView()
    }
}
