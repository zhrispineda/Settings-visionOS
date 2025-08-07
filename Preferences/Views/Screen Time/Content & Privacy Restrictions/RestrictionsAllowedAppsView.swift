//
//  AllowedAppsView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Allowed Apps
//

import SwiftUI

struct RestrictionsAllowedAppsView: View {
    @State private var safariEnabled = true
    @State private var siriDictationEnabled = true
    @State private var airDropEnabled = true
    
    @State private var newsEnabled = true
    
    var body: some View {
        CustomList(title: "Allowed Apps") {
            Section {
                Toggle(isOn: $safariEnabled) {
                    HStack(spacing: 15) {
                        IconView(icon: "com.apple.mobilesafari")
                        Text("Safari")
                        Spacer()
                    }
                }
                Toggle(isOn: $siriDictationEnabled) {
                    HStack(spacing: 15) {
                        IconView(icon: "com.apple.application-icon.siri")
                        Text("Siri & Dictation")
                        Spacer()
                    }
                }
                Toggle(isOn: $airDropEnabled) {
                    HStack(spacing: 15) {
                        Image(_internalSystemName: "airdrop.circle.fill")
                            .resizable()
                            .foregroundStyle(.blue, .white)
                            .scaledToFit()
                            .frame(height: 32)
                        Text("AirDrop")
                        Spacer()
                    }
                }
            }
            
            Section {
                Toggle(isOn: $newsEnabled) {
                    HStack(spacing: 15) {
                        IconView(icon: "com.apple.news")
                        Text("News")
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        RestrictionsAllowedAppsView()
    }
}
