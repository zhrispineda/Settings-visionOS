//
//  QuickSettingsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Quick Settings
//

import SwiftUI

struct QuickSettingsView: View {
    // Variables
    @State private var settings = ["Activities", "Audio Ducking", "Braille Alert Messages", "Braille Auto Advance", "Braille Input", "Braille Output", "Braille Tables", "Braille Text Formatting", "Caption Panel", "Direct Touch", "Hardware Typing Feedback", "Hints", "Language", "Large Cursor", "Media Descriptions", "Navigate Images", "Navigation Style", "Phonetic Feedback", "Pitch Change", "Punctuation", "Screen Curtain", "Send to HDMI", "Slide to Type", "Software Typing Feedback", "Sound Curtain", "Sounds", "Speak Rotor Confirmation", "Speaking Rate", "System Notifications", "Typing Style", "Volume"]
    @State private var selected = ["Activities", "Audio Ducking", "Braille Alert Messages", "Braille Auto Advance", "Braille Input", "Braille Output", "Braille Tables", "Braille Text Formatting", "Caption Panel", "Direct Touch", "Hardware Typing Feedback", "Hints", "Language", "Large Cursor", "Media Descriptions", "Navigate Images", "Navigation Style", "Phonetic Feedback", "Pitch Change", "Punctuation", "Screen Curtain", "Send to HDMI", "Slide to Type", "Software Typing Feedback", "Sound Curtain", "Sounds", "Speak Rotor Confirmation", "Speaking Rate", "System Notifications", "Typing Style", "Volume"]
    
    var body: some View {
        CustomList(title: "Quick Settings") {
            ForEach($settings, id: \.self, editActions: .move) { $setting in
                Button {
                    if let index = selected.firstIndex(of: setting) {
                        selected.remove(at: index)
                    } else {
                        selected.append(setting)
                    }
                } label: {
                    Label(setting, systemImage: "\(selected.contains(setting) ? "checkmark" : "")")
                }
            }
        }
        .environment(\.editMode, Binding.constant(EditMode.active))
    }
}

#Preview {
    NavigationStack {
        QuickSettingsView()
    }
}
