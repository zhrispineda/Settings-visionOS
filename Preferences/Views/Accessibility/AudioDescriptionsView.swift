//
//  AudioDescriptionsView.swift
//  Preferences
//
//  Settings > Accessibility > Audio Description
//

import SwiftUI

struct AudioDescriptionsView: View {
    // Variables
    @State private var audioDescriptionsEnabled = false
    
    var body: some View {
        CustomList(title: "Audio Descriptions") {
            Section {
                Toggle("Audio Description", isOn: $audioDescriptionsEnabled)
            } footer: {
                Text("When available, automatically play audio descriptions.")
            }
        }
    }
}

#Preview {
    AudioDescriptionsView()
}
