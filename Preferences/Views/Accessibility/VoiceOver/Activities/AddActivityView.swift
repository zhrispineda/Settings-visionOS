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
            
            Section("Speech & Audio Settings") {
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
                ListRowNavigationLabel(title: "Mute Speech", subtitle: "Default", content: OnOffView(title: "Mute Speech", selected: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Mute Sound", subtitle: "Default", content: OnOffView(title: "Mute Sound", selected: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Audio Ducking", subtitle: "Default", content: OnOffView(title: "Audio Ducking", selected: "Default", options: ["Default", "On", "Off"]))
            }
            
            Section("Verbosity Settings") {
                ListRowNavigationLabel(title: "Punctuation", subtitle: "Default", content: OnOffView(title: "Punctuation", selected: "Default", options: ["Default", "All", "Some", "None"]))
                ListRowNavigationLabel(title: "Emojis", subtitle: "Default", content: OnOffView(title: "Emojis", selected: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Container Descriptions", subtitle: "Default", content: VerbosityMethodsView(title: "Container Descriptions", options: ["Default", "Speak", "Play Sound", "Change Pitch", "Braille", "Do Nothing"], selected: ["Default"]))
                ListRowNavigationLabel(title: "Table Headers", subtitle: "Default", content: OnOffView(title: "Table Headers", selected: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Row & Column Numbers", subtitle: "Default", content: OnOffView(title: "Row & Column Numbers", selected: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Speak Hints", subtitle: "Default", content: OnOffView(title: "Speak Hints", selected: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Numbers", subtitle: "Default", content: OnOffView(title: "Numbers", selected: "Default", options: ["Default", "Words", "Numbers"]))
            }
            
            Section("Typing Settings") {
                ListRowNavigationLabel(title: "Typing Style", subtitle: "Default", content: OnOffView(title: "Typing Style", selected: "Default", options: ["Default", "Standard Typing", "Touch Typing", "Direct Touch Typing"]))
            }
            
            Section("Navigation Settings") {
                ListRowNavigationLabel(title: "Navigation Style", subtitle: "Default", content: OnOffView(title: "Navigation Style", selected: "Default", options: ["Default", "Flat", "Grouped"]))
            }
            
            Section("Braille Settings") {
                ListRowNavigationLabel(title: "General Status Cell", subtitle: "Default", content: OnOffView(title: "General Status Cell", selected: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Text Status Cell", subtitle: "Default", content: OnOffView(title: "Text Status Cell", selected: "Default", options: ["Default", "On", "Off"]))
                Button {} label: { // TODO: Popover
                    HStack {
                        Text("Braille Table")
                        Spacer()
                        Text("Default")
                            .foregroundStyle(.secondary)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                }
                ListRowNavigationLabel(title: "Braille Output", subtitle: "Default", content: OnOffView(title: "General Status Cell", selected: "", options: ["Uncontracted Six-dot Braille", "Uncontracted Eight-dot Braille", "Contracted Braille"]))
                ListRowNavigationLabel(title: "Braille Input", subtitle: "Default", content: OnOffView(title: "General Status Cell", selected: "", options: ["Uncontracted Six-dot Braille", "Uncontracted Eight-dot Braille", "Contracted Braille"]))
                ListRowNavigationLabel(title: "Auto Advance Duration", subtitle: "5s", content: AutoAdvanceDurationView())
                ListRowNavigationLabel(title: "Braille Alert Messages", subtitle: "Default", content: OnOffView(title: "Braille Alert Messages", selected: "Default", options: ["Default", "On", "Off"]))
                ListRowNavigationLabel(title: "Braille Text Formatting", subtitle: "Default", content: OnOffView(title: "Braille Text Formatting", selected: "Default", options: ["Default", "On", "Off"]))
            }
            
            Section {
                NavigationLink("Apps", destination: ApplyAppsView(title: "Apps"))
                NavigationLink("Context", destination: ActivityContextView())
            } header: {
                Text("Automatic Switching")
            } footer: {
                Text("Choose apps or contexts within apps to automatically apply the settings from this activity.")
            }
            
            Section("Interaction") {
                ListRowNavigationLabel(title: "Modifier Keys", subtitle: "Default", content: ActivityModifierKeysView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddActivityView(title: "Add Activity...")
    }
}
