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
            Section(content: {
                NavigationLink("Punctuation", destination: PunctuationView())
            }, footer: {
                Text("Customize how punctuation is output.")
            })
            
            Section {
                Toggle("Speak Hints", isOn: $speakHintsEnabled)
                NavigationLink("System Notifications", destination: {})
                ListRowNavigationLabel(title: "QuickNav Announcements", subtitle: "Play Sound", content: EmptyView())
            }
            
            Section {
                ListRowNavigationLabel(title: "Capital Letters", subtitle: "Speak Cap", content: EmptyView())
                ListRowNavigationLabel(title: "Deleting Text", subtitle: "Change Pitch", content: EmptyView())
                ListRowNavigationLabel(title: "Links", subtitle: "Speak, Braille", content: EmptyView())
                ListRowNavigationLabel(title: "Actions", subtitle: "Speak, Braille", content: EmptyView())
                ListRowNavigationLabel(title: "More Content", subtitle: "Do Nothing", content: EmptyView())
                ListRowNavigationLabel(title: "Container Descriptions", subtitle: "Speak, Change Pitch, Braille", content: EmptyView())
                ListRowNavigationLabel(title: "Numbers", subtitle: "Words", content: EmptyView())
                NavigationLink("Predictive Text Feedback", destination: {})
            }
            
            Section(content: {
                Toggle("Table Headers", isOn: $tableHeadersEnabled)
                Toggle("Row & Column Numbers", isOn: $rowColumnNumbersEnabled)
            }, header: {
                Text("Table Output")
            }, footer: {
                Text("Determines whether this information is output when navigating tables.")
            })
            
            Section(content: {
                Toggle("Speak Confirmation", isOn: $speakConfirmationEnabled)
                ListRowNavigationLabel(title: "Speak Confirmation", subtitle: "Speak", content: EmptyView())
            }, header: {
                Text("Rotor Actions")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Emojis", subtitle: "Speak, Braille", content: EmptyView())
                Toggle("Emoji Suffix", isOn: $emojiSuffixEnabled)
            }, footer: {
                Text("Speaks the word \u{2018}emoji\u{2019} when emoji are read in text content.")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Scene Description", subtitle: "On", content: EmptyView())
                ListRowNavigationLabel(title: "Media Description", subtitle: "Off", content: EmptyView())
            }, footer: {
                Text("Determines how Closed Captions + SDH are output during media playback.")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Input Feedback", subtitle: "None", content: EmptyView())
                ListRowNavigationLabel(title: "App Hover Feedback", subtitle: "Speech and Sounds", content: EmptyView())
            }, footer: {
                Text("Determines the level of feedback VoiceOver gives for certain gestures performed.")
            })
        }
    }
}

#Preview {
    VerbosityView()
}
