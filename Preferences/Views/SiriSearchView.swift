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
    @State private var showRecentsEnabled = true
    
    @State private var showInLookUpEnabled = true
    @State private var showInSpotlightEnabled = true
    
    @State private var showWhenSharingEnabled = true
    @State private var showWhenListeningEnabled = true
    
    var body: some View {
        CustomList(title: "Siri & Search") {
            Section(content: {
                ListRowNavigationLabel(title: "Language", subtitle: "English", content: EmptyView())
                    .disabled(true)
                ListRowNavigationLabel(title: "Siri Voice", subtitle: "American (Voice 4)", content: SiriVoiceView())
                NavigationLink("Siri Responses", destination: SiriResponsesView())
                Button(action: {}, label: { // TODO: Popover
                    HStack {
                        Text("My Information")
                        Spacer()
                        Text("None")
                            .foregroundStyle(.secondary)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                })
                NavigationLink("Siri & Dictation History", destination: SiriDictationHistoryView())
                NavigationLink("Automatically Send Messages", destination: AutomaticallySendMessagesView())
            }, header: {
                Text("Ask Siri")
            }, footer: {
                Text("Voice input is processed on Apple Vision Pro, but transcripts of your requests are sent to Apple. [About Ask Siri & Privacy...](#)")
            })
            
            Section(content: {
                Toggle("Show Suggestions", isOn: $showSuggestionsEnabled)
                Button("Reset Hidden Suggestions", action: {})
                Toggle("Show Recents", isOn: $showRecentsEnabled)
            }, header: {
                Text("Before Searching")
            })
            
            Section(content: {
                Toggle("Show in Look Up", isOn: $showInLookUpEnabled)
                Toggle("Show in Spotlight", isOn: $showInSpotlightEnabled)
            }, header: {
                Text("Content from Apple")
            }, footer: {
                Text("Apple can show content when looking up text or objects in photos, or when searching. [About Siri Suggestions, Search & Privacy...](#)")
            })
            
            Section(content: {
                Toggle("Show When Sharing", isOn: $showWhenSharingEnabled)
                Toggle("Show When Listening", isOn: $showWhenListeningEnabled)
            }, header: {
                Text("Suggestions from Apple")
            }, footer: {
                Text("Apple can make suggestions in apps, or when sharing, searching, or using Look Up, and Keyboard. [About Siri Suggestions, Search & Privacy...](#)")
            })
            
            Section {
                NavigationLink(destination: {}, label: {
                    Image(systemName: "calendar")
                        .font(.title)
                    Text("Calendar")
                })
                NavigationLink(destination: {}, label: {
                    Image(systemName: "folder.fill")
                        .font(.title)
                    Text("Files")
                })
            }
        }
    }
}

#Preview {
    SiriSearchView()
}
