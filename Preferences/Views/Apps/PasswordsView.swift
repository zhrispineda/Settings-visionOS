//
//  PasswordsView.swift
//  Settings-visionOS
//
//  Settings > Apps > Passwords
//

import SwiftUI

struct PasswordsView: View {
    // Variables
    @State private var showAccountsLabel: AccountDisplayMode = .titles
    @State private var savePasswordsLabel: savePasswordsMode = .askWhenSigningIn
    @State private var detectCompromisedPasswords = true
    @State private var suggestStrongPasswords = true
    @State private var autoPasskeyUpgrades = true
    
    enum AccountDisplayMode {
        case titles
        case websites
    }
    
    enum savePasswordsMode {
        case askWhenSigningIn
        case doNotAsk
    }
    
    var body: some View {
        CustomList(title: "Passwords") {
            // Permissions
            SiriSearchAccessNavigationLabel(appName: "Passwords")
            
            // Show Account As Selection
            Section {
                Picker("Show Accounts As", selection: $showAccountsLabel) {
                    Text("Titles").tag(AccountDisplayMode.titles)
                    Text("Websites").tag(AccountDisplayMode.websites)
                }
            }
            
            // Save Passwords Selection
            Section {
                Picker("Save Passwords", selection: $savePasswordsLabel) {
                    Text("Ask When Signing In").tag(savePasswordsMode.askWhenSigningIn)
                    Text("Do Not Ask When Signing In").tag(savePasswordsMode.doNotAsk)
                }
            }
            
            // Detect Compromised Passwords Toggle
            Section {
                Toggle("Detect Compromised Passwords", isOn: $detectCompromisedPasswords)
            } footer: {
                Text("Vision Pro can securely monitor your passwords and alert you if they appear in known data leaks. [About Passwords & Privacy...](#)")
            }
            
            // Suggest Strong Passwords Toggle
            Section {
                Toggle("Suggest Strong Passwords", isOn: $suggestStrongPasswords)
            } footer: {
                Text("Automatically suggest unique, strong passwords when creating accounts or changing passwords in Safari and other apps.")
            }
            
            // Allow Automatic Passkey Upgrades Toggle
            Section {
                Toggle("Allow Automatic Passkey Upgrades", isOn: $autoPasskeyUpgrades)
            } footer: {
                Text("Allow websites and apps to automatically upgrade existing accounts to use passkeys when available. Passwords saved for upgraded accounts will not be affected. [Learn more about passkeys...](#)")
            }
            
            // Buttons Section
            Section {
                Button("Open Passwords") {}
                Button("View AutoFill Settings") {}
            }
        }
    }
}

#Preview {
    NavigationStack {
        PasswordsView()
    }
}
