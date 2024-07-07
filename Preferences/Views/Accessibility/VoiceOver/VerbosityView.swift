//
//  VerbosityView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity
//

import SwiftUI

struct VerbosityView: View {
    // Variables
    @State private var speakHintsEnabled = true
    @State private var tableHeadersEnabled = true
    @State private var rowColumnNumbersEnabled = true
    @State private var speakConfirmationEnabled = true
    @State private var emojiSuffixEnabled = false
    
    var body: some View {
        CustomList(title: "Verbosity") {
            Section {
                NavigationLink("Punctuation", destination: PunctuationView())
            } footer: {
                Text("Customize how punctuation is output.")
            }
            
            Section {
                Toggle("Speak Hints", isOn: $speakHintsEnabled)
                NavigationLink("System Notifications", destination: SystemNotificationsView())
                ListRowNavigationLabel(title: "QuickNav Announcements", subtitle: "Play Sound", content: VerbosityMethodsView(title: "QuickNav Announcements"))
            }
            
            Section {
                ListRowNavigationLabel(title: "Capital Letters", subtitle: "Speak Cap", content: CapitalLettersView())
                ListRowNavigationLabel(title: "Deleting Text", subtitle: "Change Pitch", content: VerbosityAudibleMethodsView(title: "Deleting Text"))
                ListRowNavigationLabel(title: "Links", subtitle: "Speak, Braille", content: VerbosityMethodsView(title: "Links", selected: ["Speak", "Braille"]))
                ListRowNavigationLabel(title: "Actions", subtitle: "Speak, Braille", content: VerbosityMethodsView(title: "Actions", selected: ["Speak", "Braille"]))
                ListRowNavigationLabel(title: "More Content", subtitle: "Do Nothing", content: VerbosityAudibleMethodsView(title: "More Content", selected: "Do Nothing"))
                ListRowNavigationLabel(title: "Container Descriptions", subtitle: "Speak, Change Pitch, Braille", content: VerbosityMethodsView(title: "Container Descriptions", selected: ["Speak", "Change Pitch", "Braille"]))
                ListRowNavigationLabel(title: "Numbers", subtitle: "Words", content: NumbersView())
                NavigationLink("Predictive Text Feedback", destination: PredictiveTextFeedbackView())
            }
            
            Section {
                Toggle("Table Headers", isOn: $tableHeadersEnabled)
                Toggle("Row & Column Numbers", isOn: $rowColumnNumbersEnabled)
            } header: {
                Text("Table Output")
            } footer: {
                Text("Determines whether this information is output when navigating tables.")
            }
            
            Section("Rotor Actions") {
                Toggle("Speak Confirmation", isOn: $speakConfirmationEnabled)
                ListRowNavigationLabel(title: "Web Rotor Summary", subtitle: "Speak", content: VerbosityMethodsView(title: "Web Rotor Summary", options: ["Speak", "Braille", "Do Nothing"], selected: ["Speak"]))
            }
            
            Section {
                ListRowNavigationLabel(title: "Emojis", subtitle: "Speak, Braille", content: VerbosityMethodsView(title: "Emojis", options: ["Speak", "Braille", "Do Nothing"], selected: ["Speak", "Braille"]))
                Toggle("Emoji Suffix", isOn: $emojiSuffixEnabled)
            } footer: {
                Text("Speaks the word \u{2018}emoji\u{2019} when emoji are read in text content.")
            }
            
            Section {
                ListRowNavigationLabel(title: "Scene Description", subtitle: "On", content: SceneDescriptionsView())
                ListRowNavigationLabel(title: "Media Description", subtitle: "Off", content: MediaDescriptionView())
            } footer: {
                Text("Determines how Closed Captions + SDH are output during media playback.")
            }
            
            Section {
                ListRowNavigationLabel(title: "Input Feedback", subtitle: "None", content: VerbosityFeedbackView(title: "Input Feedback", selected: "None"))
                ListRowNavigationLabel(title: "App Hover Feedback", subtitle: "Speech and Sounds", content: VerbosityFeedbackView(title: "App Hover Feedback", selected: "Speech and Sounds"))
            } footer: {
                Text("Determines the level of feedback VoiceOver gives for certain gestures performed.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        VerbosityView()
    }
}
