//
//  PreferencesApp.swift
//  Settings-visionOS
//
//  Settings
//

import SwiftUI

@main
struct PreferencesApp: App {
    private let model = SettingsModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
                .frame(width: 1000, height: 730)
        }
        .windowResizability(.contentSize)
    }
}
