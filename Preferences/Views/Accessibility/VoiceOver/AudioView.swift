//
//  AudioView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Audio
//

import SwiftUI

struct AudioView: View {
    // Variables
    @State private var audioDuckingEnabled = true
    @State private var sendHDMIEnabled = false
    
    var body: some View {
        CustomList(title: "Audio") {
            Section {
                NavigationLink("VoiceOver Sounds", destination: VoiceOverSoundsView())
                Toggle("Audio Ducking", isOn: $audioDuckingEnabled)
            }
            
            Section(content: {
                Toggle("Send to HDMI", isOn: $sendHDMIEnabled)
            }, footer: {
                Text("Any externally connected media devices should be reconnected for this change to take effect.")
            })
        }
    }
}

#Preview {
    AudioView()
}
