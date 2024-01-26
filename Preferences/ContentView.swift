//
//  ContentView.swift
//  Settings-visionOS
//
//  Settings
//

import SwiftUI

struct ContentView: View {
    // Variables
    @State private var searchText = String()
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
                                Image(setting.icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 27, height: 27)
                                    .clipShape(Circle())
                                    .padding(.horizontal, 3)
                            } else if setting.icon == "applewallet" {
                                Image(setting.icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 30)
                                    .padding(.leading, 1)
                                    .padding(.trailing, 3)
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
                    ForEach(developerSettings) { setting in
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
            }
            .navigationBarTitle("Settings")
            // Find a way to hide navigation bar title but keep the search bar including rounding the bar to make it capsule shaped
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        } detail: {
            destination
                .onChange(of: selection, { // Change views when sidebar navigation links are tapped
                    if let selectedSettingsItem = combinedSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                        print("Changed to \(selectedSettingsItem.id)")
                    }
                })
        }
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
}
