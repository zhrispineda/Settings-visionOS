//
//  AudioDescriptionsView.swift
//  Preferences
//
//  Created by Chris on 1/24/24.
//

import SwiftUI

struct AudioDescriptionsView: View {
    // Variables
    @State private var audioDescriptionsEnabled = false
    
    var body: some View {
        CustomList(title: "Audio Descriptions") {
            Section(content: {
                Toggle("Audio Description", isOn: $audioDescriptionsEnabled)
            }, footer: {
                Text("When available, automatically play audio descriptions.")
            })
        }
    }
}

#Preview {
    AudioDescriptionsView()
}
