//
//  SpokenContentView.swift
//  Preferences
//
//  Settings > Accessibility > Spoken Content
//

import SwiftUI

struct SpokenContentView: View {
    // Variables
    @State private var speakSelectionEnabled = false
    @State private var speakScreenEnabled = false
    @State private var detectLanguagesEnabled = true
    @State private var speakingRate = 0.5
    
    var body: some View {
        CustomList(title: "Spoken Content") {
            Section(content: {
                Toggle("Speak Selection", isOn: $speakSelectionEnabled)
            }, footer: {
                Text("A Speak button will appear when you select text.")
            })
            
            Section {
                Toggle("Speak Screen", isOn: $speakScreenEnabled)
            }
            
            Section {
                NavigationLink("Typing Feedback", destination: SpokenContentTypingFeedbackView())
            }
            
            Section {
                NavigationLink("Voices", destination: ActivityVoiceView(title: "Voices"))
                NavigationLink("Default Language", destination: DefaultLanguageView())
                Toggle("Detect Languages", isOn: $detectLanguagesEnabled)
            }
            
            Section(content: {
                Group {
                    Slider(value: $speakingRate,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "tortoise.fill"),
                           maximumValueLabel: Image(systemName: "hare.fill"),
                           label: { Text("Speaking Rate") }
                    )
                }
                .imageScale(.large)
            }, header: {
                Text("Speaking Rate")
            })
            
            Section {
                NavigationLink("Pronunciations", destination: PronunciationsView())
            }
            
            if speakSelectionEnabled || speakScreenEnabled {
                Section(content: {
                    ListRowNavigationLabel(title: "Highlight Content", subtitle: "Off", content: HighlightContentView())
                }, footer: {
                    Text("Highlight content as it is spoken.")
                })
            }
        }
    }
}

#Preview {
    NavigationStack {
        SpokenContentView()
    }
}
