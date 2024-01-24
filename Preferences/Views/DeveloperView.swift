//
//  DeveloperView.swift
//  Settings-visionOS
//
//  Settings > Developer
//

import SwiftUI

struct DeveloperView: View {
    @State private var resetNewsLocalDataOnNextLaunch = false
    @State private var allowAnyDomain = false
    @State private var allowUnverifiedSources = false
    
    var body: some View {
        NavigationStack {
            CustomList(title: "Developer") {
                Section(content: {
                    Toggle("Reset Local Data on Next Launch", isOn: $resetNewsLocalDataOnNextLaunch)
                }, header: {
                    Text("News Testing")
                }, footer: {
                    Text("Reset layouts, images, and other cached elements. Private data will not be affected.")
                })
                
                Section(content: {
                    NavigationLink("TV Provider", destination: TVProviderView())
                }, header: {
                    Text("TV Provider Testing")
                })
                
                Section(content: {
                    NavigationLink("TV App", destination: TVAppView())
                }, header: {
                    Text("TV Provider Testing")
                })
                
                Section(content: {
                    Button("Reset Alert", action: {})
                }, header: {
                    Text("Reset Surroundings Awareness Alert")
                })
                
                Section(content: {
                    Button("Reindex All Items", action: {})
                    Button("Reindex all Items with Identifiers", action: {})
                }, header: {
                    Text("CoreSpotlight Testing")
                })
                
                Section(content: {
                    Toggle("Allow Any Domain", isOn: $allowAnyDomain)
                    Toggle("Allow Unverified Sources", isOn: $allowUnverifiedSources)
                }, header: {
                    Text("Siri Event Suggestions Testing")
                }, footer: {
                    Text("These settings affect Siri Event Suggestions from Mail and Safari. Enable Allow Any Domain to allow e-mails or web pages which have not yet been approved for Siri Event Suggestions by Apple. Enable Allow Unverified Sources to bypass DKIM or SSL authenticity verification for Siri Event Suggestions in Mail and Safari.")
                })
            }
        }
    }
}

#Preview {
    DeveloperView()
}
