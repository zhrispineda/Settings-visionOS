//
//  AddActivityView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Activities > Add Activity...
//

import SwiftUI

struct AddActivityView: View {
    // Variables
    var title = "Add Activity..."
    @State private var name = String()
    @State private var speakingRate = 0.5
    @State private var speakingVolume = 0.8
    
    var body: some View {
        CustomList(title: title) {
            Section {
                HStack(spacing: 50) {
                    Text("Name")
                    TextField("", text: $name)
                        .task {
                            if title != "Add Activity..." {
                                name = title
                            } else {
                                name = "Activity 1"
                            }
                        }
                }
            }
            
            Section(content: {
                ListRowNavigationLabel(title: "Voice", subtitle: "Default", content: ActivityVoiceView())
                Group {
                    Slider(value: $speakingRate,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "tortoise.fill"),
                           maximumValueLabel: Image(systemName: "hare.fill"),
                           label: { Text("Speaking Rate") }
                    )
                    Slider(value: $speakingVolume,
                           in: 0.0...1.0,
                           minimumValueLabel: Image(systemName: "speaker.fill"),
                           maximumValueLabel: Image(systemName: "speaker.3.fill"),
                           label: { Text("Speaking Volume") }
                    )
                }
                .imageScale(.large)
                ListRowNavigationLabel(title: "Mute Speech", subtitle: "Default", content: OnOffView(title: "Mute Speech", selectedOption: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Mute Sound", subtitle: "Default", content: OnOffView(title: "Mute Sound", selectedOption: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Audio Ducking", subtitle: "Default", content: OnOffView(title: "Audio Ducking", selectedOption: "Default", options: ["Default", "On", "Off"]))
            }, header: {
                Text("Speech & Audio Settings")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Punctuation", subtitle: "Default", content: OnOffView(title: "Punctuation", selectedOption: "Default", options: ["Default", "All", "Some", "None"]))
                ListRowNavigationLabel(title: "Emojis", subtitle: "Default", content: OnOffView(title: "Emojis", selectedOption: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Container Descriptions", subtitle: "Default", content: VerbosityMethodsView(title: "Container Descriptions", options: ["Default", "Speak", "Play Sound", "Change Pitch", "Braille", "Do Nothing"], selected: ["Default"]))
                ListRowNavigationLabel(title: "Table Headers", subtitle: "Default", content: OnOffView(title: "Table Headers", selectedOption: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Row & Column Numbers", subtitle: "Default", content: OnOffView(title: "Row & Column Numbers", selectedOption: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Speak Hints", subtitle: "Default", content: OnOffView(title: "Speak Hints", selectedOption: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Numbers", subtitle: "Default", content: OnOffView(title: "Numbers", selectedOption: "Default", options: ["Default", "Words", "Numbers"]))
            }, header: {
                Text("Verbosity Settings")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Typing Style", subtitle: "Default", content: OnOffView(title: "Typing Style", selectedOption: "Default", options: ["Default", "Standard Typing", "Touch Typing", "Direct Touch Typing"]))
            }, header: {
                Text("Typing Settings")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Navigation Style", subtitle: "Default", content: OnOffView(title: "Navigation Style", selectedOption: "Default", options: ["Default", "Flat", "Grouped"]))
            }, header: {
                Text("Navigation Settings")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "General Status Cell", subtitle: "Default", content: OnOffView(title: "General Status Cell", selectedOption: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Text Status Cell", subtitle: "Default", content: OnOffView(title: "Text Status Cell", selectedOption: "Default", options: ["Default", "On", "Off"]))
                Button(action: {}, label: { // TODO: Popover
                    HStack {
                        Text("Braille Table")
                        Spacer()
                        Text("Default")
                            .foregroundStyle(.secondary)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                })
                ListRowNavigationLabel(title: "Braille Output", subtitle: "Default", content: OnOffView(title: "General Status Cell", selectedOption: "", options: ["Uncontracted Six-dot Braille", "Uncontracted Eight-dot Braille", "Contracted Braille"]))
                ListRowNavigationLabel(title: "Braille Input", subtitle: "Default", content: OnOffView(title: "General Status Cell", selectedOption: "", options: ["Uncontracted Six-dot Braille", "Uncontracted Eight-dot Braille", "Contracted Braille"]))
                ListRowNavigationLabel(title: "Auto Advance Duration", subtitle: "5s", content: AutoAdvanceDurationView())
                ListRowNavigationLabel(title: "Braille Alert Messages", subtitle: "Default", content: OnOffView(title: "Braille Alert Messages", selectedOption: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Braille Text Formatting", subtitle: "Default", content: OnOffView(title: "Braille Text Formatting", selectedOption: "Default", options: ["Default", "On", "Off"]))
            }, header: {
                Text("Braille Settings")
            })
            
            Section(content: {
                NavigationLink("Apps", destination: ApplyAppsView(title: "Apps"))
                NavigationLink("Context", destination: ActivityContextView())
            }, header: {
                Text("Automatic Switching")
            }, footer: {
                Text("Choose apps or contexts within apps to automatically apply the settings from this activity.")
            })
            
            Section(content: {
                ListRowNavigationLabel(title: "Modifier Keys", subtitle: "Default", content: ActivityModifierKeysView())
            }, header: {
                Text("Interaction")
            })
        }
    }
}

#Preview {
    NavigationStack {
        AddActivityView(title: "Add Activity...")
    }
}
