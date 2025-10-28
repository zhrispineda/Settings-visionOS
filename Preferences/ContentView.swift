//
//  ContentView.swift
//  Settings-visionOS
//
//  Settings
//

import SwiftUI

struct ContentView: View {
    @Environment(SettingsModel.self) private var model
    @State private var searchText = ""
    @State private var showingSignInSheet = false
    
    var body: some View {
        @Bindable var model = model
        
        NavigationSplitView {
            List(selection: $model.selection) {
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
                    model.selection = model.usageSettings[2]
                }
                
                SettingsLabel(section: model.mainSettings)
                SettingsLabel(section: model.usageSettings)
                SettingsLabel(section: model.inputSettings)
                SettingsLabel(section: model.focusSettings)
                SettingsLabel(section: model.dataSettings)
                SettingsLabel(section: model.deviceSettings)
                SettingsLabel(section: model.accountSettings)
                SettingsLabel(section: model.developerSettings)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    TextField("\(Image(systemName: "mic.fill"))\tSearch", text: $searchText)
                        .frame(width: 275)
                        .textFieldStyle(.roundedBorder)
                        .padding([.horizontal, .vertical], -1)
                        .cornerRadius(22)
                }
            }
            .onAppear {
                if model.selection == nil {
                    model.selection = model.mainSettings.first
                }
            }
        } detail: {
            model.selection?.destination
        }
    }
}

struct SettingsLabel: View {
    var section: [SettingsItem]
    
    var body: some View {
        Section {
            ForEach(section) { setting in
                NavigationLink(value: setting) {
                    HStack(spacing: 15) {
                        IconView(icon: setting.icon)
                        Text(setting.title)
                    }
                }
            }
        }
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
        .environment(SettingsModel())
}
