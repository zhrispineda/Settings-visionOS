//
//  PasswordOptionsView.swift
//  Preferences
//
//  Settings > General > AutoFill & Passwords
//

import SwiftUI

struct PasswordOptionsView: View {
    @State private var autoFillPasswordsPasskeysEnabled = true
    @State private var keychainEnabled = true
    @State private var autoFillEnabled = true
    @State private var cleanUpAutomaticallyEnabled = false
    @State private var selectedPasswordsApp: passwordsApp = .passwords
    
    enum passwordsApp {
        case passwords
    }
    
    var body: some View {
        CustomList(title: "AutoFill & Passwords") {
            Section {
                Toggle("AutoFill Passwords and Passkeys", isOn: $autoFillPasswordsPasskeysEnabled)
            } footer: {
                Text("Automatically suggst passwords, passkeys, and verification codes when signing in to apps and websites.")
            }
            
            if autoFillPasswordsPasskeysEnabled {
                Section("AutoFill from:") {
                    Toggle(isOn: $autoFillEnabled) {
                        HStack(spacing: 15) {
                            IconView(icon: "com.apple.Passwords")
                            VStack(alignment: .leading) {
                                Text("Passwords")
                                Text("Passkeys, passwords, and codes")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
            
            Section {
                Toggle("Delete After Use", isOn: $cleanUpAutomaticallyEnabled)
            } header: {
                Text("Verification Codes")
            } footer: {
                Text("Automatically delete verification codes in Messages and Mail after inserting with AutoFill.")
            }
            
            Section {
                Picker("Set Up Codes In", selection: $selectedPasswordsApp) {
                    HStack {
                        IconView(icon: "com.apple.Passwords")
                        Text("Passwords")
                    }.tag(passwordsApp.passwords)
                }
            } footer: {
                Text("Open verification code setup links and QR codes with this app.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        PasswordOptionsView()
    }
}
