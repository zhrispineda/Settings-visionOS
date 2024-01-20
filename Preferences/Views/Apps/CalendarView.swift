//
//  CalendarView.swift
//  Preferences
//
//  Settings > Apps > Calendar
//

import SwiftUI

struct CalendarView: View {
    // Variables
    @State private var weekNumbersEnabled = false
    @State private var weekViewStartsOnTodayEnabled = false
    @State private var showInviteeDeclinesEnabled = true
    @State private var locationSuggestionsEnabled = true
    
    var body: some View {
        List {
            SiriSearchAccessNavigationLabel(appName: "Calendar")
            
            Section {
                ZStack(alignment: .leading) {
                    NavigationLink("", destination: AddAccountView())
                    .opacity(0)
                    Text("Add Account...")
                }
            }
            
            Section {
                ListRowNavigationLabel(title: "Time Zone Override", subtitle: "Off", content: AnyView(TimeZoneOverrideView()))
                ListRowNavigationLabel(title: "Alternate Calendars", subtitle: "Off", content: AnyView(AlternateCalendarsView()))
                Toggle("Week Numbers", isOn: $weekNumbersEnabled)
                Toggle("Week View Starts On Today", isOn: $weekViewStartsOnTodayEnabled)
                Toggle("Show Invitee Declines", isOn: $showInviteeDeclinesEnabled)
                ListRowNavigationLabel(title: "Sync", subtitle: "All Events", content: AnyView(SyncView()))
                NavigationLink("Default Alert Times", destination: DefaultAlertTimesView())
                ListRowNavigationLabel(title: "Duration for New Events", subtitle: "1 hour", content: AnyView(EmptyView()))
                NavigationLink("Start Week On", destination: {})
                Toggle("Location Suggestions", isOn: $locationSuggestionsEnabled)
            }
        }
        .padding([.leading, .trailing], 45)
        .navigationTitle("Calendar")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Calendar")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    CalendarView()
        .padding()
}
