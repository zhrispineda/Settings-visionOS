//
//  SceneDescriptionsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Scene Descriptions
//

import SwiftUI

struct SceneDescriptionsView: View {
    // Variables
    @State private var sceneDescriptionsEnabled = true
    
    var body: some View {
        CustomList(title: "Scene Descriptions") {
            Section {
                Toggle("Scene Descriptions", isOn: $sceneDescriptionsEnabled)
            } footer: {
                Text("Output scenes and objects detected within images.")
            }
            
            Section {
                NavigationLink("Apply to Apps", destination: ApplyAppsView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        SceneDescriptionsView()
    }
}
