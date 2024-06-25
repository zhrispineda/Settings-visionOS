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
                Section {
                    Button {
                        showingSignInSheet.toggle()
                    } label: {
                        HStack(alignment: .top) {
                            VStack {
                                Image("appleAccount")
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
                
                // MARK: Main Section
                SettingsLabel(selection: $selection, section: mainSettings)
                
                // MARK: Focus Section
                SettingsLabel(selection: $selection, section: focusSettings)
                
                // MARK: Usage Section
                SettingsLabel(selection: $selection, section: usageSettings)
                
                // MARK: Device Section
                SettingsLabel(selection: $selection, section: deviceSettings)
                
                // MARK: Account Section
                SettingsLabel(selection: $selection, section: accountSettings)
                
                // MARK: Developer Section
                SettingsLabel(selection: $selection, section: developerSettings)
            }
            // TODO: Implement search box with capsule/rounded shape
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
                .onChange(of: selection) { // Change views when selecting sidebar navigation links
                    if let selectedSettingsItem = combinedSettings.first(where: { $0.type == selection }) {
                        destination = selectedSettingsItem.destination
                    }
                }
        }
    }
}

struct SettingsLabel: View {
    // Variables
    @Binding var selection: SettingsModel?
    var section: [SettingsItem<AnyView>]
    let internalIcons = ["appstore", "environments.fill", "health.3.stack.3d.fill"]
    
    var body: some View {
        Section {
            ForEach(section) { setting in
                NavigationLink(value: setting.type) {
                    HStack(spacing: 15) {
                        if UIImage(systemName: setting.icon) != nil {
                            if setting.icon == "accessibility" {
                                ZStack {
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(setting.color.gradient)
                                    Image(systemName: setting.icon)
                                }
                            } else {
                                Image(systemName: setting.icon)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                            }
                        } else {
                            if internalIcons.contains(setting.icon) {
                                ZStack {
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(setting.color.gradient)
                                    Image(_internalSystemName: setting.icon)
                                        //.resizable()
                                        //.scaledToFit()
                                        //.frame(width: 22)
                                        .imageScale(setting.icon == "appstore" ? .medium : .small)
                                        .padding(.bottom, setting.icon == "health.3.stack.3d.fill" ? 3 : 0)
                                }
                            } else {
                                Image(setting.icon)
                                    .resizable()
                                    .foregroundStyle(.white.gradient, setting.color.gradient)
                                    .scaledToFit()
                                    .frame(width: 33)
                            }
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
                }
            }
        }
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
}
