//
//  SiriResponsesView.swift
//  Preferences
//
//  Settings > Siri & Search > Siri Responses
//

import SwiftUI

struct SiriResponsesView: View {
    // Variables
    @State private var selectedOption = "Automatic"
    let options = ["Automatic", "Prefer Spoken Responses"]
    @State private var alwaysShowSiriCaptionsEnabled = false
    @State private var alwaysShowSpeechEnabled = false
    
    var body: some View {
        CustomList(title: "Siri Responses") {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selectedOption = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selectedOption == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("Spoken Responses")
            })
            
            Section(content: {
                Toggle("Always Show Siri Captions", isOn: $alwaysShowSiriCaptionsEnabled)
            }, footer: {
                Text("Show what Siri says on screen.")
            })
            
            Section(content: {
                Toggle("Always Show Speech", isOn: $alwaysShowSpeechEnabled)
            }, footer: {
                Text("Show a transcription of your speech on screen.")
            })
        }
    }
}

#Preview {
    SiriResponsesView()
}
