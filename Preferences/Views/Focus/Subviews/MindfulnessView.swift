//
//  MindfulnessView.swift
//  Preferences
//
//  Settings > Focus > Mindfulness Focus > Mindfulness
//

import SwiftUI

struct MindfulnessView: View {
    // Variables
    @State private var turnOnAutomaticallyEnabled = true
    
    var body: some View {
        List {
            Section {
                Toggle("Turn On Automatically", isOn: $turnOnAutomaticallyEnabled)
            } footer: {
                Text("Mindfulness Focus will be activated automatically when you start a session in the Mindfulness app.")
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Mindfulness")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
            }
        }
    }
}

#Preview {
    NavigationStack {
        MindfulnessView()
    }
}
