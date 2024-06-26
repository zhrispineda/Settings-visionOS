//
//  AllowedAppsView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Allowed Apps
//

import SwiftUI

struct RestrictionsAllowedAppsView: View {
    // Variables
    @State private var safariEnabled = true
    @State private var siriDictationEnabled = true
    @State private var airDropEnabled = true
    
    @State private var newsEnabled = true
    
    var body: some View {
        CustomList(title: "Allowed Apps") {
            Section {
                Toggle(isOn: $safariEnabled, label: {
                    HStack(spacing: 15) {
                        Image("applesafari")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 32)
                        Text("Safari")
                        Spacer()
                    }
                })
                Toggle(isOn: $siriDictationEnabled, label: {
                    HStack(spacing: 15) {
                        Image("applesiri")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 32)
                        Text("Siri & Dictation")
                        Spacer()
                    }
                })
                Toggle(isOn: $airDropEnabled, label: {
                    HStack(spacing: 15) {
                        Image(_internalSystemName: "airdrop.circle.fill")
                            .resizable()
                            .foregroundStyle(.blue, .white)
                            .scaledToFit()
                            .frame(height: 32)
                        Text("AirDrop")
                        Spacer()
                    }
                })
            }
            
            Section {
                Toggle(isOn: $newsEnabled, label: {
                    HStack(spacing: 15) {
                        Image("applenews")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 32)
                        Text("News")
                        Spacer()
                    }
                })
            }
        }
    }
}

#Preview {
    RestrictionsAllowedAppsView()
}
