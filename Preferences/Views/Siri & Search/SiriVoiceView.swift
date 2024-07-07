//
//  SiriVoice.swift
//  Preferences
//
//  Settings > Siri & Search > Siri Voice
//

import SwiftUI

struct SiriVoiceView: View {
    // Variables
    @State private var selectedVariety = "American"
    let varietyOptions = ["American", "Australian", "British", "Indian"," Irish", "South African"]
    
    @State private var selectedAmericanVoice = "Voice 4"
    @State private var selectedBritishVoice = "Voice 3"
    @State private var selectedIndianVoice = "Voice 1"
    @State private var selectedOtherVoice = "Voice 2"
    
    let AmericanVoiceOptions = ["Voice 1", "Voice 2", "Voice 3", "Voice 4", "Voice 5"]
    let BritishVoiceOptions = ["Voice 1", "Voice 2", "Voice 3", "Voice 4"]
    let voiceOptions = ["Voice 1", "Voice 2"]
    
    var body: some View {
        CustomList(title: "Siri Voice") {
            Section("Variety") {
                Picker("", selection: $selectedVariety) {
                    ForEach(varietyOptions, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
            
            Section("Voice") {
                switch selectedVariety {
                case "American":
                    Picker("", selection: $selectedAmericanVoice) {
                        ForEach(AmericanVoiceOptions, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.inline)
                    .labelsHidden()
                case "British":
                    Picker("", selection: $selectedBritishVoice) {
                        ForEach(BritishVoiceOptions, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.inline)
                    .labelsHidden()
                case "Indian":
                    Picker("", selection: $selectedIndianVoice) {
                        ForEach(voiceOptions, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.inline)
                    .labelsHidden()
                default:
                    Picker("", selection: $selectedOtherVoice) {
                        ForEach(voiceOptions, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.inline)
                    .labelsHidden()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SiriVoiceView()
    }
}
