//
//  DefaultAlertTimesView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Default Alert Times
//

import SwiftUI

struct DefaultAlertTimesView: View {
    // Variables
    @State private var timeToLeaveEnabled = false
    
    var body: some View {
        List {
            Section {
                ListRowNavigationLabel(title: "Birthdays", subtitle: "None", content: BirthdaysView())
                ListRowNavigationLabel(title: "Events", subtitle: "None", content: EventsView())
                ListRowNavigationLabel(title: "All-Day Events", subtitle: "None", content: AllDayEventsView())
            }
            
            Section(content: {
                Toggle("Time to Leave", isOn: $timeToLeaveEnabled).disabled(true)
            }, footer: {
                Text("Time to leave alerts are not available because Calendar does not have access to your precise location.")
            })
        }
        .navigationTitle("Default Alert Times")
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Default Alert Times").font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    DefaultAlertTimesView()
}
