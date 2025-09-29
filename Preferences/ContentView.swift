//
//  ContentView.swift
//  Settings-visionOS
//
//  Settings
//

import SwiftUI

struct ContentView: View {
    @State private var destination = AnyView(GeneralView())
    @State private var searchText = ""
    @State private var selection: SettingsModel? = .general
    @State private var showingSignInSheet = false
    
    var body: some View {
        NavigationSplitView {
            List(selection: $selection) {
                Section {
                    Button {
                        showingSignInSheet.toggle()
                    } label: {
                        HStack(alignment: .top) {
                            VStack {
                                Image("AppleAccount")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding(.leading, -5)
                            }
                            VStack(alignment: .leading) {
                                Text("Apple Account")
                                    .font(.subheadline)
                                    .bold()
                                Text("Sign in to access your iCloud data, set up the App Store, use Apple services, and more.")
                                    .font(.footnote)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                    .sheet(isPresented: $showingSignInSheet) {
                        SignInView()
                            .frame(width: 650, height: 650)
                    }
                }
                
                Button("Ready for Apple Intelligence") {
                    selection = .siriSearch
                }
                
                // MARK: Main Section
                SettingsLabel(selection: $selection, section: mainSettings)
                
                // MARK: Usage Section
                SettingsLabel(selection: $selection, section: usageSettings)
                
                // MARK: Input Section
                SettingsLabel(selection: $selection, section: inputSettings)
                
                // MARK: Focus Section
                SettingsLabel(selection: $selection, section: focusSettings)
                
                // MARK: Data Section
                SettingsLabel(selection: $selection, section: dataSettings)
                
                // MARK: Device Section
                SettingsLabel(selection: $selection, section: deviceSettings)
                
                // MARK: Account Section
                SettingsLabel(selection: $selection, section: accountSettings)
                
                // MARK: Developer Section
                SettingsLabel(selection: $selection, section: developerSettings)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    TextField("\(Image(systemName: "mic.fill"))\tSearch", text: $searchText)
                        .frame(width: 275)
                        .textFieldStyle(.roundedBorder)
                        .padding(.bottom, -5)
                        .padding(.horizontal, -5)
                }
            }
        } detail: {
            destination
                .onChange(of: selection) { // Change views when selecting sidebar navigation links
                    if let selectedSettingsItem = combinedSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                    }
                }
        }
    }
}

struct SettingsLabel: View {
    @Binding var selection: SettingsModel?
    var section: [SettingsItem<AnyView>]
    
    var body: some View {
        Section {
            ForEach(section) { setting in
                NavigationLink(value: setting.type) {
                    HStack(spacing: 15) {
                        if UIImage(systemName: setting.icon) != nil {
                            Image(systemName: setting.icon)
                                .font(.largeTitle)
                                .fontWeight(.light)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white.gradient, setting.color.gradient)
                        } else if setting.icon.contains("com.") {
                            IconView(icon: setting.icon)
                        } else {
                            Image(setting.icon)
                                .resizable()
                                .foregroundStyle(.white.gradient, setting.color.gradient)
                                .scaledToFit()
                                .frame(width: 33)
                                .clipShape(Circle())
                        }
                        Text(setting.id)
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
}
