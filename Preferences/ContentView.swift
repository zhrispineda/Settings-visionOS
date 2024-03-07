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
    @State private var showingSignInSheet = false
    @State private var selection: SettingsModel? = .general
    @State private var destination = AnyView(GeneralView())
    
    var body: some View {
        NavigationSplitView {
            List(selection: $selection) {
                // TODO: Clean loops for listing every NavigationLink
                // TODO: Pop to root detail view on tapping NavigationLink within its own destination view
                Section {
                    Button(action: {
                        showingSignInSheet.toggle()
                    }, label: {
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white.gradient, .gray.gradient)
                                .font(.system(size: 40))
                                .padding(.leading, -5)
                            VStack(alignment: .leading) {
                                Text("Sign in to \(UIDevice().name)")
                                    .font(.subheadline)
                                    .bold()
                                Text("Set up iCloud, the App Store, and more.")
                                    .font(.footnote)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    })
                    .sheet(isPresented: $showingSignInSheet, content: {
                        SignInView()
                            .frame(width: 650, height: 650)
                    })
                }
                
                // MARK: - Main Section
                Section {
                    ForEach(mainSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            HStack(spacing: 15) {
                                if setting.icon == "logo.appstore.circle.fill" {
                                    Image(setting.icon)
                                        .font(.largeTitle)
                                        .fontWeight(.light)
                                        .symbolRenderingMode(.palette)
                                        .foregroundStyle(.white.gradient, setting.color.gradient)
                                } else if setting.icon == "Environments_Normal" {
                                    ZStack {
                                        Circle()
                                            .frame(width: 30, height: 30)
                                            .foregroundStyle(.indigo.gradient)
                                        Image(setting.icon)
                                            .fontWeight(.medium)
                                            .font(.title3)
                                    }
                                } else {
                                    Image(systemName: setting.icon)
                                        .font(.largeTitle)
                                        .fontWeight(.light)
                                        .symbolRenderingMode(.palette)
                                        .foregroundStyle(.white.gradient, setting.color.gradient)
                                }
                                Text(setting.id)
                                Spacer()
                            }
                            .overlay(
                                VStack(alignment: .trailing) {
                                    RoundedRectangle(cornerRadius: 16, style: .circular)
                                        .stroke(.gray, lineWidth: 1)
                                        .opacity(0.5)
                                        .padding(-13.5)
                                        .offset(x: 4)
                                }
                                .frame(width: 272)
                                .opacity(selection == setting.type ? 1 : 0)
                            )
                        })
                    }
                }
                
                // MARK: - Focus Section
                Section {
                    ForEach(focusSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            HStack(spacing: 15) {
                                Image(systemName: setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                                Text(setting.id)
                                Spacer()
                            }
                            .overlay(
                                VStack(alignment: .trailing) {
                                    RoundedRectangle(cornerRadius: 16, style: .circular)
                                        .stroke(.gray, lineWidth: 1)
                                        .opacity(0.5)
                                        .padding(-13.5)
                                        .offset(x: 4)
                                }
                                .frame(width: 272)
                                .opacity(selection == setting.type ? 1 : 0)
                            )
                        })
                    }
                }
                
                // MARK: - Usage Section
                Section {
                    ForEach(usageSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            HStack(spacing: 15) {
                                if setting.icon == "accessibility" {
                                    ZStack {
                                        Circle()
                                            .frame(width: 30, height: 30)
                                            .foregroundStyle(.blue.gradient)
                                        Image(systemName: setting.icon)
                                            .fontWeight(.medium)
                                            .font(.title3)
                                    }
                                    .padding(.leading, 3)
                                } else if setting.icon == "custom.switch.2.circle.fill" {
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
                                Spacer()
                            }
                            .overlay(
                                VStack(alignment: .trailing) {
                                    RoundedRectangle(cornerRadius: 16, style: .circular)
                                        .stroke(.gray, lineWidth: 1)
                                        .opacity(0.5)
                                        .padding(-13.5)
                                        .offset(x: 4)
                                }
                                .frame(width: 272)
                                .opacity(selection == setting.type ? 1 : 0)
                            )
                        })
                    }
                }
                
                // MARK: - Device Section
                Section {
                    ForEach(deviceSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            HStack(spacing: 15) {
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
                                Spacer()
                            }
                            .overlay(
                                VStack(alignment: .trailing) {
                                    RoundedRectangle(cornerRadius: 16, style: .circular)
                                        .stroke(.gray, lineWidth: 1)
                                        .opacity(0.5)
                                        .padding(-13.5)
                                        .offset(x: 4)
                                }
                                .frame(width: 272)
                                .opacity(selection == setting.type ? 1 : 0)
                            )
                        })
                    }
                }
                
                // MARK: - Account Section
                Section {
                    ForEach(accountSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            HStack(spacing: 15) {
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
                                Spacer()
                            }
                            .overlay(
                                VStack(alignment: .trailing) {
                                    RoundedRectangle(cornerRadius: 16, style: .circular)
                                        .stroke(.gray, lineWidth: 1)
                                        .opacity(0.5)
                                        .padding(-13.5)
                                        .offset(x: 4)
                                }
                                .frame(width: 272)
                                .opacity(selection == setting.type ? 1 : 0)
                            )
                        })
                    }
                }
                
                // MARK: - Developer Section
                Section {
                    ForEach(developerSettings) { setting in
                        NavigationLink(value: setting.type, label: {
                            HStack(spacing: 15) {
                                Image(systemName: setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                                Text(setting.id)
                                Spacer()
                            }
                            .overlay(
                                VStack(alignment: .trailing) {
                                    RoundedRectangle(cornerRadius: 16, style: .circular)
                                        .stroke(.gray, lineWidth: 1)
                                        .opacity(0.5)
                                        .padding(-13.5)
                                        .offset(x: 4)
                                }
                                .frame(width: 272)
                                .opacity(selection == setting.type ? 1 : 0)
                            )
                        })
                    }
                }
            }
            // TODO: Implement search box with capsule/rounded shape including mic for dictation
            //.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
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
                .onChange(of: selection, { // Change views when selecting sidebar navigation links
                    if let selectedSettingsItem = combinedSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                    }
                })
        }
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
}
