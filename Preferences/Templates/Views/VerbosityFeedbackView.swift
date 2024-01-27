//
//  VerbosityFeedbackView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Input Feedback
//  Settings > Accessibility > VoiceOver > Verbosity > App Hover Feedback
//

import SwiftUI

struct VerbosityFeedbackView: View {
    // Variables
    var title = String()
    let options = ["None", "Speech", "Sounds", "Speech and Sounds"]
    @State var selected = "None"
    
    var body: some View {
        CustomList(title: title) {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selected == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, footer: {
                Text("Determines the level of feedback VoiceOver gives for certain gestures performed.")
            })
        }
    }
}

#Preview {
    VerbosityFeedbackView()
}
