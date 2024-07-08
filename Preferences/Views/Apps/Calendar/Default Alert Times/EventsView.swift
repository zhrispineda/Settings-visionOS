//
//  EventsView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Default Alert Times > Events
//

import SwiftUI

struct EventsView: View {
    // Variables
    @State private var selected = "None"
    let options = ["None", "At time of event", "5 minutes before", "10 minutes before", "15 minutes before", "30 minutes before", "1 hour before", "2 hours before", "1 day before", "2 days before", "1 week before"]
    
    var body: some View {
        CustomList(title: "Events") {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
    }
}

#Preview {
    NavigationStack {
        EventsView()
    }
}
