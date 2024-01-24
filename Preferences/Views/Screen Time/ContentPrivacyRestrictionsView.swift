//
//  ContentPrivacyRestrictionsView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions
//

import SwiftUI

struct ContentPrivacyRestrictionsView: View {
    // Variables
    @State private var contentPrivacyRestrictionsEnabled = false
    
    var body: some View {
        List {
            Section {
                Toggle("Content & Privacy Restrictions", isOn: $contentPrivacyRestrictionsEnabled)
            }
            
            Section {
                NavigationLink("iTunes & App Store Purchases", destination: PurchasesView())
                NavigationLink("Allowed Apps", destination: RestrictionsAllowedAppsView())
                NavigationLink("Content Restrictions", destination: ContentRestrictionsView())
            }
            .disabled(!contentPrivacyRestrictionsEnabled)
            
            Section(content: {
                ListRowNavigationLabel(title: "Location Services", subtitle: "Allow", content: EmptyView())
                ListRowNavigationLabel(title: "Contacts", subtitle: "Allow", content: AllowDontAllowChangesView(title: "Contacts"))
                ListRowNavigationLabel(title: "Calendars", subtitle: "Allow", content: AllowDontAllowChangesView(title: "Calendars"))
                ListRowNavigationLabel(title: "Reminders", subtitle: "Allow", content: AllowDontAllowChangesView(title: "Reminders"))
                ListRowNavigationLabel(title: "Photos", subtitle: "Allow", content: AllowDontAllowChangesView(title: "Photos"))
                ListRowNavigationLabel(title: "Share My Location", subtitle: "Allow", content: AllowDenyView(title: "Share My Location"))
                ListRowNavigationLabel(title: "Bluetooth Sharing", subtitle: "Allow", content: AllowDontAllowChangesView(title: "Bluetooth Sharing"))
                ListRowNavigationLabel(title: "Microphone", subtitle: "Allow", content: AllowDontAllowChangesView(title: "Microphone"))
                ListRowNavigationLabel(title: "Speech Recognition", subtitle: "Allow", content: AllowDontAllowChangesView(title: "Speech Recognition"))
                ListRowNavigationLabel(title: "Apple Advertising", subtitle: "Allow", content: AllowDenyView(title: "Apple Advertising"))
                ListRowNavigationLabel(title: "Allow Apps to Request to Track", subtitle: "Allow", content: AllowDontAllowChangesView(title: "Allow Apps to Request to Track"))
                ListRowNavigationLabel(title: "Media & Apple Music", subtitle: "Allow", content: AllowDontAllowChangesView(title: "Media & Apple Music"))
            }, header: {
                Text("Privacy")
            })
            .disabled(!contentPrivacyRestrictionsEnabled)
            
            Section(content: {
                ListRowNavigationLabel(title: "Passcode Changes", subtitle: "Allow", content: AllowDenyView(title: "Passcode Changes"))
                ListRowNavigationLabel(title: "Account Changes", subtitle: "Allow", content: AllowDenyView(title: "Account Changes"))
                ListRowNavigationLabel(title: "Cellular Data Changes", subtitle: "Allow", content: AllowDenyView(title: "Cellular Data Changes"))
                ListRowNavigationLabel(title: "Reduce Loud Sounds", subtitle: "Allow", content: AllowDenyView(title: "Reduce Loud Sounds"))
                ListRowNavigationLabel(title: "Driving Focus", subtitle: "Allow", content: AllowDenyView(title: "Driving Focus"))
                ListRowNavigationLabel(title: "TV Provider", subtitle: "Allow", content: AllowDenyView(title: "TV Provider"))
                ListRowNavigationLabel(title: "Background App Activities", subtitle: "Allow", content: AllowDenyView(title: "Background App Activities"))
            }, header: {
                Text("Allow Changes:")
            })
            .disabled(!contentPrivacyRestrictionsEnabled)
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Content & Privacy Restrictions")
                        .font(.title2)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    ContentPrivacyRestrictionsView()
}
