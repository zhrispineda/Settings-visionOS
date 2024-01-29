//
//  SpokenContentTypingFeedbackView.swift
//  Preferences
//
//  Settings > Accessibility >
//

import SwiftUI

struct SpokenContentTypingFeedbackView: View {
    // Variables
    @State private var charactersEnabled = false
    @State private var characterHintsEnabled = false
    @State private var speakWordsEnabled = false
    @State private var speakAutoTextEnabled = false
    @State private var holdSpeakPredictionsEnabled = false
    
    var body: some View {
        CustomList(title: "Typing Feedback") {
            Section(content: {
                Toggle("Characters", isOn: $charactersEnabled)
                Toggle("Character Hints", isOn: $characterHintsEnabled)
            }, header: {
                Text("Character Feedback")
            })
            
            Section(content: {
                Toggle("Speak Words", isOn: $speakWordsEnabled)
            }, footer: {
                Text("Speak whole words while typing.")
            })
            
            Section(content: {
                Toggle("Speak Auto-text", isOn: $speakAutoTextEnabled)
            }, footer: {
                Text("Automatically speak auto-corrections and auto-capitalizations")
            })
            
            Section(content: {
                Toggle("Speak Auto-text", isOn: $holdSpeakPredictionsEnabled)
            }, footer: {
                Text("When typing predictions are enabled, tap and hold on each word to hear it spoken.")
            })
        }
    }
}

#Preview {
    NavigationStack {
        SpokenContentTypingFeedbackView()
    }
}
