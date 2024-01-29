//
//  AddNewSwitchView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Switches > Add New Switch...
//

import SwiftUI

struct AddNewSwitchView: View {
    var body: some View {
        CustomList(title: "Source") {
            Section(content: {
                NavigationLink("External", destination: ExternalView())
                NavigationLink("Sound", destination: SoundView())
            }, header: {
                Text("Source")
            }, footer: {
                Text("Choose a switch source. Some sources may be unavailable until downloads complete.")
            })
        }
    }
}

#Preview {
    NavigationStack {
        AddNewSwitchView()
    }
}
