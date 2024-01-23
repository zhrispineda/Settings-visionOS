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
                NavigationLink("Content Restrictions", destination: {})
            }
            .disabled(!contentPrivacyRestrictionsEnabled)
            
            Section(content: {
                ListRowNavigationLabel(title: "Location Services", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Contacts", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Calendars", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Reminders", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Photos", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Share My Location", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Bluetooth Sharing", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Microphone", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Speech Recognition", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Apple Advertising", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Allow Apps to Request to Track", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Media & Apple Music", subtitle: "Allow", content: AnyView(EmptyView()))
            }, header: {
                Text("Privacy")
            })
            .disabled(!contentPrivacyRestrictionsEnabled)
            
            Section(content: {
                ListRowNavigationLabel(title: "Passcode Changes", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Account Changes", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Cellular Data Changes", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Reduce Loud Sounds", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Driving Focus", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "TV Provider", subtitle: "Allow", content: AnyView(EmptyView()))
                ListRowNavigationLabel(title: "Background App Activities", subtitle: "Allow", content: AnyView(EmptyView()))
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
                        .font(.title)
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
