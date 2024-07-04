//
//  VerbosityFeedbackView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Input Feedback
//  Settings > Accessibility > VoiceOver > Verbosity > App Hover Feedback
//
//  Parameters:
//  title: String, selected: String
//

import SwiftUI

struct VerbosityFeedbackView: View {
    // Variables
    var title = String()
    let options = ["None", "Speech", "Sounds", "Speech and Sounds"]
    @State var selected = "None"
    
    var body: some View {
        CustomList(title: title) {
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                Text("Determines the level of feedback VoiceOver gives for certain gestures performed.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        VerbosityFeedbackView()
    }
}
