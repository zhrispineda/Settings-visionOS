//
//  TimeLimitsView.swift
//  Preferences
//
//  Settings > Accessibility > Guided Access > Time Limits
//

import SwiftUI

struct TimeLimitsView: View {
    // Variables
    @State private var speakEnabled = false
    
    var body: some View {
        CustomList(title: "Time Limits") {
            Section(content: {
                ListRowNavigationLabel(title: "Sound", subtitle: "None", content: AlertTonesView(title: "Sound", selected: "None (Default)"))
                Toggle("Speak", isOn: $speakEnabled)
            }, header: {
                Text("Alarm")
            }, footer: {
                Text("Play a sound and have the remaining Guided Access time spoken before time ends.")
            })
        }
    }
}

#Preview {
    NavigationStack {
        TimeLimitsView()
    }
}
