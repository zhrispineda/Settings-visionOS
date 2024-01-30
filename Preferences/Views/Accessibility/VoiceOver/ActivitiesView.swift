//
//  ActivitiesView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Activities
//

import SwiftUI

struct ActivitiesView: View {
    // Variables
    @State private var activities = ["Programming"]
    
    var body: some View {
        CustomList(title: "Activities", editEnabled: true) {
            Section(content: {
                ForEach($activities, id: \.self, editActions: [.move, .delete]) { $activity in
                    NavigationLink(activity, destination: AddActivityView(title: "Programming"))
                }
            }, footer: {
                Text("Activities allow you to change a group of VoiceOver settings quickly with the rotor, or automatically when opening an app or encountering a speicif item in the user interface.")
            })
            
            Section {
                NavigationLink("Add Activity...", destination: AddActivityView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        ActivitiesView()
    }
}
