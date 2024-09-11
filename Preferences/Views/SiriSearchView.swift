//
//  SiriSearchView.swift
//  Settings-visionOS
//
//  Settings > Siri & Search
//

import SwiftUI

struct SiriSearchView: View {
    // Variables
    @State private var showSuggestionsEnabled = true
    @State private var showingResetHiddenSuggestionsAlert = false
    @State private var showWhenSharingEnabled = true
    @State private var showWhenListeningEnabled = true
    
    var body: some View {
        CustomList(title: "Siri & Search") {
            Section {
                ListRowNavigationLabel(title: "Language", subtitle: "English (United States)", content: EmptyView())
                ListRowNavigationLabel(title: "Voice", subtitle: "American (Voice 4)", content: SiriVoiceView())
                NavigationLink("Siri Responses", destination: SiriResponsesView())
                Button {} label: {
                    HStack {
                        Text("My Information")
                        Spacer()
                        Text("None")
                            .foregroundStyle(.secondary)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                }
                NavigationLink("Siri & Dictation History", destination: SiriDictationHistoryView())
                NavigationLink("Messaging with Siri", destination: AutomaticallySendMessagesView())
            } header: {
                Text("Siri Requests")
            } footer: {
                Text("[About Ask Siri & Privacy...](#)")
            }
            
            Section {
                Toggle("Suggest Apps Before Searching", isOn: $showSuggestionsEnabled)
                Button("Reset Hidden Suggestions") { showingResetHiddenSuggestionsAlert.toggle() }
                    .alert("Resetting will allow previously hidden suggestions to resume showing up again.", isPresented: $showingResetHiddenSuggestionsAlert) {
                        Button("Reset", role: .destructive) {}
                        Button("Cancel", role: .cancel) {}
                    }
                Toggle("Show When Sharing", isOn: $showWhenSharingEnabled)
                Toggle("Show Listening Suggestions", isOn: $showWhenListeningEnabled)
            } header: {
                Text("Suggestions")
            } footer: {
                Text("Apple can make suggestions in apps, or when sharing, searching, or using Look Up, and Keyboard. [About Siri Suggestions, Search & Privacy...](#)")
            }
            
            Section("Siri App Access") {
                NavigationLink("Apps") {
                    ListRowNavigationImageLabel(isRounded: false, image: "applecalendar", title: "Calendar", content: SiriSearchAppView(appName: "Calendar"))
                    ListRowNavigationImageLabel(isRounded: true, image: "applefiles", title: "Files", content: SiriSearchAppView(appName: "Files"))
                    ListRowNavigationImageLabel(isRounded: true, image: "applefreeform", title: "Freeform", content: SiriSearchAppView(appName: "Freeform"))
                    ListRowNavigationImageLabel(isRounded: false, image: "applemaps", title: "Maps", content: SiriSearchAppView(appName: "Maps"))
                    ListRowNavigationImageLabel(isRounded: false, image: "applenews", title: "News", content: SiriSearchAppView(appName: "News"))
                    ListRowNavigationImageLabel(isRounded: true, image: "applephotos", title: "Photos", content: SiriSearchAppView(appName: "Photos"))
                    ListRowNavigationImageLabel(isRounded: false, image: "applereminders", title: "Reminders", content: SiriSearchAppView(appName: "Reminders"))
                    ListRowNavigationImageLabel(isRounded: true, image: "applesafari", title: "Safari", content: SiriSearchAppView(appName: "Safari"))
                    ListRowNavigationImageLabel(isRounded: true, image: "applesettings", title: "Settings", content: SiriSearchAppView(appName: "Settings"))
                    ListRowNavigationImageLabel(isRounded: false, image: "appleshortcuts", title: "Shortcuts", content: SiriSearchAppView(appName: "Shortcuts"))
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SiriSearchView()
    }
}
