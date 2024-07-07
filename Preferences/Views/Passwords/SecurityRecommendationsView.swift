//
//  SecurityRecommendationsView.swift
//  Preferences
//
//  Settings > Passwords > Security Recommendations
//

import SwiftUI

struct SecurityRecommendationsView: View {
    // Variables
    @State private var detectCompromisedPasswordsEnabled = true
    
    var body: some View {
        CustomList(title: "Security Recommendations") {
            Section {
                Toggle("Detect Compromised Passwords", isOn: $detectCompromisedPasswordsEnabled)
            } footer: {
                Text("Vision Pro can securely monitor your passwords and alert you if they appear in known data leaks. [About Passwords & Privacy...](#)")
                    .padding()
            }
        }
    }
}

#Preview {
    SecurityRecommendationsView()
}
