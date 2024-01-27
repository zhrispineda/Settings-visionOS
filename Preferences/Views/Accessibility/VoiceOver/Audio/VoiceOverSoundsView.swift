//
//  VoiceOverSoundsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Audio > VoiceOver Sounds
//

import SwiftUI

struct VoiceOverSoundsView: View {
    // Variables
    @State private var soundsEnabled = true
    @State private var matchSpeechVolume = false
    @State private var volume = 0.8
    @State private var handTrackingSoundFeedbackEnabled = true
    let interactionSounds = ["Item Focused", "Screen Recognition Item Focused", "Item Activated", "Navigation Wrapped Backwards", "Navigation Wrapped Forwards", "Scrolled Page", "Boundary Reached", "No Item Discovered", "Interactable Group", "Start Interacting", "Stop Interacting", "Exploration Began", "Switched to Next Window"]
    let voiceOverFeedbackSounds = ["Screen Changed", "Synchronized Focus", "Entered Target Area", "Exited Target Area", "Navigated Inside Touch Container", "Previous Rotor", "Next Rotor", "Pass-Through Gesture", "No Results", "Detected Text & Images", "Quick Nav Enabled", "Quick Nav Disabled", "Sensitive Content", "Hover Entered Window", "Hover Left Window", "Gestures Active", "Gestures Paused", "Unknown Command"]
    let appFeedbackSounds = ["Item Loading", "Item Loaded", "Popover Appeared", "Alert Appeared", "Item Reordered"]
    let brailleSounds = ["Braille Display Connected", "Braille Display Disconnected", "Item Saved", "Item Save Failed", "Item Saving"]
    let textEditingSounds = ["Collaboration Occurred", "Insertion Point Moved", "AutoFill Suggestion Appeared", "AutoFill Suggestion Dismissed", "Text Selection Direction Changed", "AutoFill Suggestion Selected", "Secure Text Entered"]
    let systemSounds = ["Authentication Succeeded", "Authentication Failed", "Reachability Started", "Reachability Ended", "Dock Disappeared", "Folder Opening", "Folder Opened", "Folder Closed", "Keyboard Appeared", "Keyboard Disappeared", "Volume Changed", "Screen Locked"]
    
    var body: some View {
        CustomList(title: "VoiceOver Sounds") {
            Section(content: {
                Toggle("Sounds", isOn: $soundsEnabled.animation())
                
                if soundsEnabled {
                    Toggle("Match Speech Volume", isOn: $matchSpeechVolume.animation())
                    if !matchSpeechVolume {
                        Group {
                            Slider(value: $volume,
                                   in: 0.0...1.0,
                                   minimumValueLabel: Image(systemName: "speaker.fill"),
                                   maximumValueLabel: Image(systemName: "speaker.3.fill"),
                                   label: { Text("Speaking Rate") }
                            )
                        }
                        .imageScale(.large)
                    }
                }
            }, header: {
                Text("Sounds")
            }, footer: {
                Text("The volume rotor will change \(soundsEnabled && matchSpeechVolume ? "the volume of VoiceOver speech & sounds." : "only the volume of VoiceOver speech.")")
            })
            
            Section(content: {
                ForEach(interactionSounds, id: \.self) { sound in
                    NavigationLink(sound, destination: VoiceOverSoundView(title: sound))
                }
            }, header: {
                Text("Interaction")
            })
            
            Section(content: {
                ForEach(voiceOverFeedbackSounds, id: \.self) { sound in
                    NavigationLink(sound, destination: VoiceOverSoundView(title: sound))
                }
            }, header: {
                Text("VoiceOver Feedback")
            })
            
            Section(content: {
                ForEach(appFeedbackSounds, id: \.self) { sound in
                    NavigationLink(sound, destination: VoiceOverSoundView(title: sound))
                }
            }, header: {
                Text("App Feedback")
            })
            
            Section(content: {
                ForEach(brailleSounds, id: \.self) { sound in
                    NavigationLink(sound, destination: VoiceOverSoundView(title: sound))
                }
            }, header: {
                Text("Braille")
            })
            
            Section(content: {
                ForEach(textEditingSounds, id: \.self) { sound in
                    NavigationLink(sound, destination: VoiceOverSoundView(title: sound))
                }
            }, header: {
                Text("Text Editing")
            })
            
            Section(content: {
                ForEach(systemSounds, id: \.self) { sound in
                    NavigationLink(sound, destination: VoiceOverSoundView(title: sound))
                }
            }, header: {
                Text("System")
            })
            
            Section(content: {
                Toggle("Hand Tracking Sound Feedback", isOn: $handTrackingSoundFeedbackEnabled)
            }, header: {
                Text("Hand Tracking")
            })
        }
    }
}

#Preview {
    VoiceOverSoundsView()
}
