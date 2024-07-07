//
//  SiriView.swift
//  Preferences
//
//  Settings > Accessibility > Siri
//

import SwiftUI

struct SiriView: View {
    // Variables
    @State private var typeToSiri = false
    @State private var siriPauseTimeOption = "Default"
    @State private var spokenResponsesOption = "Automatic"
    @State private var speakingRate = 100.0
    let siriPauseTimeOptions = ["Default", "Longer", "Longest"]
    let spokenResponsesOptions = ["Prefer Silent Responses", "Automatic", "Prefer Spoken Responses"]
    
    var body: some View {
        CustomList(title: "Siri") {
            Section {
                Toggle("Type to Siri", isOn: $typeToSiri)
            } footer: {
                Text("Siri will \(typeToSiri ? "allow you to type your requests rather than speaking them." : "listen for voice input.")")
            }
            
            Section {
                Picker("", selection: $siriPauseTimeOption) {
                    ForEach(siriPauseTimeOptions, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } header: {
                Text("Siri Pause Time")
            } footer: {
                Text("Set how long Siri waits for you to finish speaking.")
            }
            
            Section("Speaking Rate") {
                Group {
                    VStack {
                        Slider(value: $speakingRate,
                               in: 80.0...200.0,
                               minimumValueLabel: Image(systemName: "tortoise.fill"),
                               maximumValueLabel: Image(systemName: "hare.fill"),
                               label: { Text("Speaking Rate") }
                        )
                        Text("\(Int(speakingRate))%")
                    }
                }
                .imageScale(.large)
            }
            
            Section("Spoken Responses") {
                Picker("", selection: $spokenResponsesOption) {
                    ForEach(spokenResponsesOptions, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
        }
    }
}

#Preview {
    NavigationStack {
        SiriView()
    }
}
