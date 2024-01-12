//
//  ContentView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/2/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var searchText = ""
    @State private var selection: SettingsModel? = .general
    @State private var destination = AnyView(GeneralView())

    var body: some View {
        NavigationSplitView {
            List(selection: $selection) {
                // TODO: Clean the loops for listing every navigation button
                Section {
                    Button(action: {
                        print("Toggling Apple ID Popover")
                    }, label: {
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white.gradient, .gray.gradient)
                                .font(.system(size: 40))
                                .padding(.leading, -5)
                            VStack(alignment: .leading) {
                                Text("Sign in to Apple Vision Pro")
                                    .font(.subheadline)
                                    .bold()
                                Text("Set up iCloud, the App Store, and more.")
                                    .font(.footnote)
                            }
                        }
                    })
                }
                
                // Main Section
                Section {
                    ForEach(mainSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            if setting.icon == "logo.appstore.circle.fill" {
                                Image(setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                            } else {
                                Image(systemName: setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                            }
                            Text(setting.id)
                        })
                    }
                }
                
                // Focus Section
                Section {
                    ForEach(focusSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            Image(systemName: setting.icon)
                                .font(.largeTitle)
                                .fontWeight(.light)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white.gradient, setting.color.gradient)
                            Text(setting.id)
                        })
                    }
                }
                
                // Usage Section
                Section {
                    ForEach(usageSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            if setting.icon == "custom.switch.2.circle.fill" {
                                Image(setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                            } else if setting.icon == "applesiri" {
                                Image(setting.icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 30)
                                    .padding(.leading, 2)
                            } else {
                                Image(systemName: setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                            }
                            Text(setting.id)
                        })
                    }
                }
                
                // Device Section
                Section {
                    ForEach(deviceSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            if setting.icon == "custom.externaldrive.circle.fill" {
                                Image(setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                            } else {
                                Image(systemName: setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                            }
                            Text(setting.id)
                        })
                    }
                }
                
                // Account Section
                Section {
                    ForEach(accountSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            if setting.icon == "custom.key.circle.fill" {
                                Image(setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                            } else if setting.icon == "applegamecenter" {
                                ZStack {
                                    Circle().foregroundColor(.white)
                                        .frame(height: 30)
                                    Image(setting.icon)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 20)
                                        .padding(.leading, 2)
                                }
                            } else if setting.icon == "applewallet" {
                                Image(setting.icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 30)
                                    .padding(.leading, 2)
                            } else {
                                Image(systemName: setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                            }
                            Text(setting.id)
                        })
                    }
                }
                
                // Developer Section
                Section {
                    NavigationLink(value: developerSettings.type, label: {
                        Image(systemName: developerSettings.icon)
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white.gradient, developerSettings.color.gradient)
                        Text(developerSettings.id)
                    })
                }
            }
            .navigationBarTitle("Settings")
            // Find a way to hide navigation bar title but keep the search bar including rounding the bar to make it capsule shaped
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        } detail: {
            destination
                .onChange(of: selection, { // Change views when sidebar navigation links are tapped
                    if let selectedSettingsItem = mainSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                    }
                    if let selectedSettingsItem = focusSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                    }
                    if let selectedSettingsItem = usageSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                    }
                    if let selectedSettingsItem = deviceSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                    }
                    if let selectedSettingsItem = accountSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                    }
                    if developerSettings.type == selection {
                        destination = developerSettings.destination
                    }
                })
            // TODO: Clean the .onChange function to be cleaner
        }
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
}
