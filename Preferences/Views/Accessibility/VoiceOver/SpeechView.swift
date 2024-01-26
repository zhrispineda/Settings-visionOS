//
//  SpeechView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Speech
//

import SwiftUI

struct SpeechView: View {
    // Variables
    @State private var pitchValue = 50.0
    @State private var pitchChangeEnabled = true
    @State private var detectLanguagesEnabled = true
    
    var body: some View {
        CustomList(title: "Speech") {
            Section {
                ListRowNavigationLabel(title: "Speech", subtitle: "Samantha", content: VoiceView())
                NavigationLink("Pronounciations", destination: PronounciationsView())
            }
            
            Section(content: {
                HStack(spacing: 15) {
                    Slider(value: $pitchValue, in: 0...100)
                    Text("\(pitchValue, specifier: "%.0f")%")
                    // Changing whitePoint value on Slider sometimes causes 100% CPU and freezes slider
                }
                Toggle("Pitch Change", isOn: $pitchChangeEnabled)
            }, header: {
                Text("Pitch")
            })
            
            Section(content: {
                Toggle("Detect Languages", isOn: $detectLanguagesEnabled)
            }, footer: {
                Text("VoiceOver will switch voices when text in another language is detected.")
            })
            
            Section(content: {
                NavigationLink("Add New Language...", destination: AddNewLanguageView())
            }, header: {
                Text("ROTOR LANGUAGES")
            })
        }
    }
}

#Preview {
    SpeechView()
}
