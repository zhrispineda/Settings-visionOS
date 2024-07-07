//
//  PredictiveTextFeedbackView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Predictive Text Feedback
//

import SwiftUI

struct PredictiveTextFeedbackView: View {
    var body: some View {
        CustomList(title: "Predictive Text Feedback") {
            Section {
                ListRowNavigationLabel(title: "When Predictive Text Appears", subtitle: "Speak, Play Sound", content: VerbosityMethodsView(title: "When Predictive Text Appears", selected: ["Speak", "Play Sound"]))
            } footer: {
                Text("VoiceOver will output predictive text when it appears.")
            }
            
            Section {
                ListRowNavigationLabel(title: "When Predictive Text Feedback is Entered", subtitle: "Speak, Change Pitch", content: VerbosityMethodsView(title: "When Predictive Text Feedback is Entered", selected: ["Speak", "Change Pitch"]))
            } footer: {
                Text("VoiceOver will output predictive text when entered.")
            }
        }
    }
}

#Preview {
    PredictiveTextFeedbackView()
}
