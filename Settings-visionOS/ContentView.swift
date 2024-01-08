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
            .navigationBarTitle("Settings")
            // Find a way to hide navigation bar title but keep the search bar including rounding the bar to make it capsule shaped
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        } detail: {
            destination
                .onChange(of: selection, { // Change views when sidebar navigation links are tapped
                    if let selectedSettingsItem = mainSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                    }
                })
        }
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
}
