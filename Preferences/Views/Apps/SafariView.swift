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
    
    @State private var tabDisplayMode = 0
    
    @State private var openNewTabsInBackgroundEnabled = true
    
    @State private var preventCrossSiteTrackingEnabled = true
    @State private var fraudelentWebsiteWarningEnabled = true
    
    @State private var showingClearAlert = false
    @State private var showingCloseAlert = false
    @State private var recentlyErased = false
    
    @State private var automaticallySaveOfflineEnabled = false
    
    var body: some View {
        CustomList(title: "Safari") {
            SiriSearchAccessNavigationLabel(appName: "Safari")
            
            // Search Section
            Section(content: {
                ListRowNavigationLabel(title: "Search Engine", subtitle: "Google", content: SearchEngineView())
                ListRowNavigationLabel(title: "Private Search Engine", subtitle: "Default", content: PrivateSearchEngineView())
                Toggle("Search Engine Suggestions", isOn: $searchEngineSuggestionsEnabled)
                Toggle("Safari Suggestions", isOn: $safariSuggestionsEnabled)
                ListRowNavigationLabel(title: "Quick Website Search", subtitle: "On", content: QuickWebsiteSearchView())
                Toggle("Preload Top Hit", isOn: $preloadTopHitEnabled)
            }, header: {
                Text("Search")
            }, footer: {
                Text("\(searchEngineSuggestionsEnabled ? "Private Browsing uses on-device information to provide search suggestions. No data is shared witht he service provider. " : "")[About Siri Suggestions, Search & Privacy...](#)").tint(.cyan)
            })
            
            // General Section
            Section(content: {
                NavigationLink("AutoFill", destination: AutoFillView())
                ListRowNavigationLabel(title: "Favorites", subtitle: "Favorites", content: FavoritesView())
                Toggle("Block Pop-ups", isOn: $blockPopUpsEnabled)
                Toggle("Request Dark Mode", isOn: $requestDarkModeEnabled)
                NavigationLink("Extensions", destination: ExtensionsView())
                ListRowNavigationLabel(title: "Downloads", subtitle: "On My \(UIDevice().name)", content: DownloadsView())
            }, header: {
                Text("General")
            })
            
            // Tabs Section
            Section(content: {
                HStack {
                    Spacer()
                    VStack {
                        // TODO: Missing animation
                        Text("Look to Show")
                            .padding(.bottom, 1)
                        // TODO: Missing functional radio buttons
                        Button(action: { tabDisplayMode = 0 }, label: {
                            Image(systemName: tabDisplayMode == 0 ? "checkmark.circle.fill" : "circle")
                                .foregroundStyle(.white, .blue)
                                .font(.title)
                                .fontWeight(.light)
                        })
                        .buttonStyle(.plain)
                    }
                    Spacer()
                    VStack {
                        // TODO: Missing animation
                        Text("Always Show")
                            .padding(.bottom, 1)
                        // TODO: Missing functional radio buttons
                        Button(action: { tabDisplayMode = 1 }, label: {
                            Image(systemName: tabDisplayMode == 1 ? "checkmark.circle.fill" : "circle")
                                .foregroundStyle(.white, .blue)
                                .font(.title)
                                .fontWeight(.light)
                        })
                        .buttonStyle(.plain)
                    }
                    Spacer()
                }
                Toggle("Open New Tabs in Background", isOn: $openNewTabsInBackgroundEnabled)
                ListRowNavigationLabel(title: "When Using New Keyboard Shortcut", subtitle: "Open Tab", content: WhenUsingNewKeyboardShortcutView())
                ListRowNavigationLabel(title: "Close Tabs", subtitle: "Manually", content: CloseTabsView())
            }, header: {
                Text("Tabs")
            }, footer: {
                Text("Allow Safari to automatically close tabs that haven't recently been viewed.")
            })
            
            // Privacy & Security Section
            Section(content: {
                Toggle("Prevent Cross-Site Tracking", isOn: $preventCrossSiteTrackingEnabled)
                ListRowNavigationLabel(title: "Hide IP Address", subtitle: "Off", content: HideIPAddressView())
                Toggle("Fradulent Website Warning", isOn: $fraudelentWebsiteWarningEnabled)
            }, header: {
                Text("Privacy & Security")
            }, footer: {
                Text("[About Safari & Privacy...](#)").tint(.cyan)
            })
            
            // Clear History and Website Data Button
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
            
            // Settings for Websites Section
            Section(content: {
                NavigationLink("Page Zoom", destination: PageZoomView())
                NavigationLink("Request Desktop Website", destination: RequestDesktopWebsiteView())
                NavigationLink("Reader", destination: ReaderView())
                NavigationLink("Camera", destination: CameraView())
                NavigationLink("Microphone", destination: MicrophoneView())
                NavigationLink("Location", destination: LocationView())
            }, header: {
                Text("Settings for Websites")
            })
            
            // Reading List Section
            Section(content: {
                Toggle("Automatically Save Offline", isOn: $automaticallySaveOfflineEnabled)
            }, header: {
                Text("Reading List")
            }, footer: {
                Text("Automatically save all Reading List items from iCloud for offline reading.")
            })
            
            Section {
                NavigationLink("Advanced", destination: SafariAdvancedView())
            }
        }
    }
}

#Preview {
    SafariView()
        .padding()
}
