//
//  PhotosView.swift
//  Settings-visionOS
//
//  Settings > Apps > Photos
//

import SwiftUI

struct PhotosView: View {
    // Variables
    @State private var usePasscodeEnabled = true
    @State private var showHiddenAlbumEnabled = true
    @State private var autoPlayVideosLivePhotosEnabled = true
    @State private var viewFullHDREnabled = true
    @State private var showHolidayEventsEnabled = true
    @State private var showMemoriesEnabled = true
    @State private var showingResetAlert = false
    
    var body: some View {
        CustomList(title: "Photos") {
            SiriSearchAccessNavigationLabel(appName: "Photos")
            
            Section {
                Toggle("Shared Albums", isOn: .constant(false))
                    .disabled(true)
            } header: {
                Text("Albums")
            } footer: {
                Text("View Shared Albums shared with other people. Turn this off to remove Shared Albums from this device. Use iPhone to subscribe or unsubscribe.")
            }
            
            Section {
                Toggle("Use Passcode", isOn: $usePasscodeEnabled)
            } footer: {
                Text("Your passcode is required to view the Hidden and Recently Deleted albums.")
            }
            
            Section {
                Toggle("Show Hidden Album", isOn: $showHiddenAlbumEnabled)
            } footer: {
                Text("The Hidden album will appear in the Albums tab, under Utilities.")
            }
            
            Section {
                Toggle("Auto-Play Videos and Live Photos", isOn: $autoPlayVideosLivePhotosEnabled)
            }
            
            Section {
                Toggle("View Full HDR", isOn: $viewFullHDREnabled)
            } header: {
                Text("HDR (High Dynamic Range)")
            } footer: {
                Text("Automatically adjust the display to show te complete dynamic range of photos.")
            }
            
            Section {
                Button("Reset Suggested Memories") { showingResetAlert.toggle() }
                    .alert("Resetting will allow\npreviously blocked places,\ndates, or holidays to once\nagain be included in new\nMemories.", isPresented:$showingResetAlert) {
                        Button("Reset", role: .destructive) {}
                        Button("Cancel", role: .cancel) {}
                    }
                Toggle("Show Holiday Events", isOn: $showHolidayEventsEnabled)
            } header: {
                Text("Memories")
            } footer: {
                Text("You can choose to see timely holiday events and those for your home country or region.")
            }
            
            Section {
                Toggle("Show Memories", isOn: $showMemoriesEnabled)
            } footer: {
                Text("Allow Memories to automatically appear in the Memories tab. If turned off, the Memories tab will be hidden.")
            }
            
            Section {} footer: {
                Text("[About Photos & Privacy...](#)")
            }
        }
    }
}

#Preview {
    NavigationStack {
        PhotosView()
    }
}
