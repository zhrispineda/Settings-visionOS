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
        List {
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
                        Image("appleairdrop")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 32)
                            .clipShape(Circle())
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
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Allowed Apps")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    RestrictionsAllowedAppsView()
}
