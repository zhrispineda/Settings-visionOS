//
//  MediaDescriptionView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Media Descriptions
//

import SwiftUI

struct MediaDescriptionView: View {
    // Variables
    @State private var selected = "Off"
    let options = ["Off", "Speech", "Braille", "Speech and Braille"]
    
    var body: some View {
        CustomList(title: "Media Descriptions") {
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                Text("Determines how Closed Captions + SDH are output during media playback.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        MediaDescriptionView()
    }
}
