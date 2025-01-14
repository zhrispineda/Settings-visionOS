//
//  SiriSearchView.swift
//  Settings-visionOS
//
//  Settings > Siri & Search
//

import SwiftUI

struct SiriSearchView: View {
    // Variables
    @State private var siriEnabled = false
    @State private var showSuggestionsEnabled = true
    @State private var showingResetHiddenSuggestionsAlert = false
    @State private var showWhenSharingEnabled = true
    @State private var showWhenListeningEnabled = true
    @State private var showRecentSearches = true
    @State private var showRelatedContent = true
    
    var body: some View {
        CustomList(title: "Siri & Search") {
            Section {
                ListRowNavigationLabel(title: "Language", subtitle: "English (United States)", content: EmptyView())
                NavigationLink("Talk to Siri", destination: EmptyView())
                Toggle("", isOn: $siriEnabled)
                ListRowNavigationLabel(title: "Voice", subtitle: "American (Voice 4)", content: SiriVoiceView())
                NavigationLink("Siri Responses", destination: SiriResponsesView())
                NavigationLink("Messaging with Siri", destination: AutomaticallySendMessagesView())
                NavigationLink("Siri & Dictation History", destination: SiriDictationHistoryView())
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
            
            Section {
                Toggle("Show Recent Searches", isOn: $showRecentSearches)
                Toggle("Show Related Content", isOn: $showRelatedContent)
            } header: {
                Text("Search and Look Up")
            } footer: {
                Text("Apple can show content when searching, or when looking up text in objects or photos. [About Siri Suggestions, Search & Privacy...](#)")
            }
            
            Section("Siri App Access") {
                ListRowNavigationIconLabel(color: .indigo, icon: "app.grid.3x3", title: "Apps", content: SiriAppsView())
            }
        }
    }
}

#Preview {
    NavigationStack {
        SiriSearchView()
    }
}
