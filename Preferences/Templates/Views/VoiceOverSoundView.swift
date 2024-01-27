//
//  VoiceOverSoundView.swift
//  Preferences
//
//  Template for displaying each VoiceOver sound.
//

import SwiftUI

struct VoiceOverSoundView: View {
    var title = String()
    @State private var soundEnabled = true
    
    var body: some View {
        CustomList(title: title) {
            Section {
                Toggle("Sound", isOn: $soundEnabled)
            }
            
            Section {
                Button("Preview", action: {})
            }
        }
    }
}

#Preview {
    VoiceOverSoundView()
}
