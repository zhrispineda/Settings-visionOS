//
//  MediaDescriptionView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Media Descriptions
//

import SwiftUI

struct MediaDescriptionView: View {
    // Variables
    let options = ["Off", "Speech", "Braille", "Speech and Braille"]
    @State private var selected = "Off"
    
    var body: some View {
        CustomList(title: "Media Descriptions") {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selected == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, footer: {
                Text("Determines how Closed Captions + SDH are output during media playback.")
            })
        }
    }
}

#Preview {
    MediaDescriptionView()
}
