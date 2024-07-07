//
//  SiriResponsesView.swift
//  Preferences
//
//  Settings > Siri & Search > Siri Responses
//

import SwiftUI

struct SiriResponsesView: View {
    // Variables
    @State private var selected = "Automatic"
    let options = ["Automatic", "Prefer Spoken Responses"]
    @State private var alwaysShowSiriCaptionsEnabled = false
    @State private var alwaysShowSpeechEnabled = false
    
    var body: some View {
        CustomList(title: "Siri Responses") {
            Section("Spoken Responses") {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
            
            Section {
                Toggle("Always Show Siri Captions", isOn: $alwaysShowSiriCaptionsEnabled)
            } footer: {
                Text("Show what Siri says on screen.")
            }
            
            Section {
                Toggle("Always Show Speech", isOn: $alwaysShowSpeechEnabled)
            } footer: {
                Text("Show a transcription of your speech on screen.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        SiriResponsesView()
    }
}
