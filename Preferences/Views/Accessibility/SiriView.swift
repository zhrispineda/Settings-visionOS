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
    let siriPauseTimeOptions = ["Default", "Longer", "Longest"]
    
    @State private var spokenResponsesOption = "Automatic"
    let spokenResponsesOptions = ["Automatic", "Prefer Spoken Responses"]
    
    var body: some View {
        CustomList(title: "Siri") {
            Section(content: {
                Toggle("Type to Siri", isOn: $typeToSiri)
            }, footer: {
                Text("Siri will \(typeToSiri ? "allow you to type your requests rather than speaking them." : "listen for voice input.")")
            })
            
            Section(content: {
                ForEach(siriPauseTimeOptions, id: \.self) { option in
                    Button(action: { siriPauseTimeOption = option }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if siriPauseTimeOption == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("Siri Pause Time")
            }, footer: {
                Text("Set how long Siri waits for you to finish speaking.")
            })
            
            Section(content: {
                ForEach(spokenResponsesOptions, id: \.self) { option in
                    Button(action: { spokenResponsesOption = option }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if spokenResponsesOption == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("Spoken Responses")
            })
        }
    }
}

#Preview {
    SiriView()
}
