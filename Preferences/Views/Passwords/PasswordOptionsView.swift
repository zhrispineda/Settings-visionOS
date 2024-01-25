//
//  PasswordOptionsView.swift
//  Preferences
//
//  Settings > Passwords > Password Options
//

import SwiftUI

struct PasswordOptionsView: View {
    // Variables
    @State private var autoFillPasswordsPasskeysEnabled = true
    @State private var keychainEnabled = true
    @State private var cleanUpAutomaticallyEnabled = false
    
    var body: some View {
        CustomList(title: "Password Options") {
            Section(content: {
                Toggle("AutoFill Passwords and Passkeys", isOn: $autoFillPasswordsPasskeysEnabled)
            }, footer: {
                Text("AutoFill helps you sign into apps and websites.")
            })
            
            if autoFillPasswordsPasskeysEnabled {
                Section(content: {
                    Button(action: {
                        keychainEnabled.toggle()
                    }, label: {
                        HStack(spacing: 15) {
                            Image("custom.key.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white, .gray.gradient)
                            Text("Keychain")
                            Spacer()
                            if keychainEnabled {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }, header: {
                    Text("Use passwords and passkeys from:")
                })
            }
            
            Section(content: {
                Toggle("Clean Up Automatically", isOn: $cleanUpAutomaticallyEnabled)
            }, header: {
                Text("Verification Codes")
            }, footer: {
                Text("Automatically delete verification codes in Messages and Mail after inserting with AutoFill.")
            })
        }
    }
}

#Preview {
    PasswordOptionsView()
}
