//
//  DeveloperView.swift
//  Settings-visionOS
//
//  Settings > Developer
//

import SwiftUI

struct DeveloperView: View {
    @State private var credentialExchange = false
    @State private var resetNewsLocalDataOnNextLaunch = false
    @State private var allowAnyDomain = false
    @State private var allowUnverifiedSources = false
    @State private var showAudioInput = false
    
    var body: some View {
        NavigationStack {
            CustomList(title: "Developer") {
                Section {
                    Toggle("Credential Exchange", isOn: $credentialExchange)
                } header: {
                    Text("Authentication Services Testing")
                } footer: {
                    Text("Enables the credential exchange API in the Authentication Services framework for apps on this device.")
                }
//                Section {
//                    Toggle("Allow Mac Virtual Display", isOn: $macVirtualDisplayEnabled)
//                } header: {
//                    Text("Immersive Experience Testing")
//                } footer: {
//                    Text("Allow access to Mac Virtual Display during an immersive experience.")
//                }
                
                Section {
                    Toggle("Reset Local Data on Next Launch", isOn: $resetNewsLocalDataOnNextLaunch)
                } header: {
                    Text("News Testing")
                } footer: {
                    Text("Reset layouts, images, and other cached elements. Private data will not be affected.")
                }
                
                Section("TV Provider Testing") {
                    NavigationLink("TV Provider", destination: TVProviderView())
                }
                
                Section("TV Provider Testing") {
                    NavigationLink("TV App", destination: TVAppView())
                }
                
//                Section {
//                    Button("Reset Alert") {}
//                } header: {
//                    Text("Reset Surroundings Awareness Alert")
//                }
                
                Section("CoreSpotlight Testing") {
                    Button("Reindex All Items") {}
                    Button("Reindex all Items with Identifiers") {}
                }
                
                Section {
                    Toggle("Allow Any Domain", isOn: $allowAnyDomain)
                    Toggle("Allow Unverified Sources", isOn: $allowUnverifiedSources)
                } header: {
                    Text("Siri Event Suggestions Testing")
                } footer: {
                    Text("These settings affect Siri Event Suggestions from Mail and Safari. Enable Allow Any Domain to allow e-mails or web pages which have not yet been approved for Siri Event Suggestions by Apple. Enable Allow Unverified Sources to bypass DKIM or SSL authenticity verification for Siri Event Suggestions in Mail and Safari.")
                }
                
                Section {
                    Toggle("Show Audio Output in Settings", isOn: $showAudioInput)
                } header: {
                    Text("Siri in Bluetooth Car Testing")
                } footer: {
                    Text("Allow Siri to change audio route in a bluetooth vehicle. Go to Settings -> Siri & Search -> Siri Responses -> ”When Connected to Car Bluetooth” to change the audio route.")
                }
                
                Section {
                    Button("Sign In") {}
                } header: {
                    Text("Sandbox Apple Account")
                } footer: {
                    Text("This account will only be used for testing your in-app purchases in sandbox.")
                }
            }
        }
    }
}

#Preview {
    DeveloperView()
}
