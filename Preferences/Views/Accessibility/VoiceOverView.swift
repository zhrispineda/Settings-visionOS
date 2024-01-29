//
//  VoiceOverView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver
//

import SwiftUI

struct VoiceOverView: View {
    // Variables
    @State private var speakingRate = 0.5
    @State private var voiceOverEnabled = false
    @State private var largeCursor = false
    @State private var captionPanel = false
    
    var body: some View {
        CustomList(title: "VoiceOver") {
            Section(content: {
                Toggle("VoiceOver", isOn: $voiceOverEnabled)
            }, footer: {
                VStack(alignment: .leading) {
                    Text("**VoiceOver speaks items on screen:**")
                    Text("\u{2022} Left Index Pinch or Right Ring Pinch to Activate.")
                    Text("\u{2022} Right Index Pinch to Move to Next Item.")
                    Text("\n\t[Learn more...](#)") // TODO: Popover
                }
            })
            
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
                NavigationLink("Speech", destination: SpeechView())
                NavigationLink("Braille", destination: BrailleView())
            }
            
            Section {
                NavigationLink("Verbosity", destination: VerbosityView())
                NavigationLink("Audio", destination: AudioView())
            }
            
            Section(content: {
                NavigationLink("Commands", destination: CommandsView())
                NavigationLink("Rotor", destination: RotorView())
                NavigationLink("Activities", destination: ActivitiesView())
                NavigationLink("Typing", destination: TypingView())
                NavigationLink("Quick Settings", destination: {})
            }, footer: {
                Text("Quick settings allows you to access VoiceOver settings at any time. Access quick settings with left index modifier right ring pinch.")
            })
            
            Section {
                ListRowNavigationLabel(title: "Navigation Style", subtitle: "Flat", content: EmptyView())
                ListRowNavigationLabel(title: "Navigate Images", subtitle: "Always", content: EmptyView())
                Toggle("Large Cursor", isOn: $largeCursor)
                Toggle("Caption Panel", isOn: $captionPanel)
            }
            
            Section {
                ListRowNavigationLabel(title: "Double-pinch Timeout", subtitle: "0.25s", content: EmptyView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        VoiceOverView()
    }
}
