//
//  InteractionView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction
//

import SwiftUI

struct InteractionView: View {
    // Variables
    @State private var preferNonHeadlockedControlsEnabled = false
    
    var body: some View {
        CustomList(title: "Interaction") {
            Section {
                ListRowNavigationLabel(title: "AssistiveTouch", subtitle: "Off", content: AssistiveTouchView())
            } footer: {
                Text("AssistiveTouch allows you to use your \(UIDevice().name) if you have difficulty interacting with spatial content or if you require an adaptive accessory.")
            }
            
            Section {
                ListRowNavigationLabel(title: "Dwell Control", subtitle: "Off", content: DwellControlView())
            } footer: {
                Text("With Dwell Control, holding the pointer still for the specified duration will perform the selected dwell action.")
            }
            
            Section {
                NavigationLink("Pointer Control", destination: PointerControlView())
            }
            
            Section {
                Toggle("Prefer Non-Headlocked Controls", isOn: $preferNonHeadlockedControlsEnabled)
            } footer: {
                Text("Prefers that user interface items should not be tied to head movement.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        InteractionView()
    }
}
