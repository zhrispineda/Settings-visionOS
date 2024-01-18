//
//  SafariView.swift
//  Settings-visionOS
//
//  Settings > Apps > Safari
//

import SwiftUI

struct SafariView: View {
    // Variables
    @State private var searchEngineSuggestionsEnabled = true
    @State private var safariSuggestionsEnabled = true
    @State private var preloadTopHitEnabled = true
    @State private var blockPopUpsEnabled = true
    @State private var requestDarkModeEnabled = false
    
    @State private var showingClearAlert = false
    @State private var showingCloseAlert = false
    @State private var recentlyErased = false
    
    var body: some View {
        List {
            SiriSearchAccessNavigationLabel(appName: "Safari")
            
            Section(content: {
                ListRowNavigationLabel(title: "Search Engine", subtitle: "Google", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Private Search Engine", subtitle: "Default", content: AnyView(EmptyView()))
                Toggle("Search Engine Suggestions", isOn: $searchEngineSuggestionsEnabled)
                Toggle("Safari Suggestions", isOn: $safariSuggestionsEnabled)
                ListRowNavigationLabel(title: "Quick Website Search", subtitle: "On", content: AnyView(EmptyView()))
                Toggle("Preload Top Hit", isOn: $preloadTopHitEnabled)
            }, header: {
                Text("Search")
            }, footer: {
                Text("Private Browsing uses on-device information to provide search suggestions. No data is shared witht he service provider. [About Siri Suggestions, Search & Privacy...](#)")
            })
            
            Section(content: {
                NavigationLink("AutoFill", destination: {})
                ListRowNavigationLabel(title: "Favorites", subtitle: "Favorites", content: AnyView(EmptyView()))
                Toggle("Block Pop-ups", isOn: $blockPopUpsEnabled)
                Toggle("Request Dark Mode", isOn: $requestDarkModeEnabled)
                NavigationLink("Extensions", destination: {})
                ListRowNavigationLabel(title: "Downloads", subtitle: "On My Apple Vision Pro", content: AnyView(EmptyView()))
            }, header: {
                Text("General")
            })
            
            Section(content: {
                
            }, header: {
                Text("Tabs")
            }, footer: {
                Text("Allow Safari to automatically close tabs that haven't recently been viewed.")
            })
            
            Section(content: {
                
            }, header: {
                Text("Privacy & Security")
            }, footer: {
                Text("[About Safari & Privacy...](#)")
            })
            
            Section {
                Button("Clear History and Website Data", action: { showingClearAlert.toggle() })
                    .disabled(recentlyErased)
                    .alert("Clearing will remove history, cookies, and other browsing data.", isPresented:$showingClearAlert) {
                        Button("Clear History and Data", role: .destructive) { showingCloseAlert.toggle() }
                        Button("Cancel", role: .cancel) {}
                    }
                    .alert("Do you also want to close all tabs?", isPresented:$showingCloseAlert) {
                        Button("Close Tabs", role: .destructive) { recentlyErased.toggle() }
                        Button("Keep Tabs", role: .cancel) { recentlyErased.toggle() }
                    }
            }
            
            Section(content: {
                
            }, header: {
                Text("Settings for Websites")
            })
            
            Section(content: {
                
            }, header: {
                Text("Reading List")
            }, footer: {
                Text("Automatically save all Reading List items from iCloud for offline reading.")
            })
            
            Section {
                NavigationLink("Advanced", destination: {})
            }
        }
        .padding([.leading, .trailing], 30)
        .navigationTitle("Safari")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Safari")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    SafariView()
        .padding()
}
