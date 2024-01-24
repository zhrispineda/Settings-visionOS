//
//  PrivacySecurityView.swift
//  Settings-visionOS
//
//  Settings > Privacy & Security
//

import SwiftUI

struct PrivacySecurityView: View {
    var body: some View {
        List {
            // Tracking Section
            Section {
                ListRowNavigationIconLabel(color: .orange, icon: "custom.app.connected.to.app.below.circle.fill", title: "Tracking", content: EmptyView())
            }
            
            // Apps Privacy Controls Section
            Section(content: {
                ListRowNavigationIconLabel(color: .blue, icon: "viewfinder.circle.fill", title: "Surroundings", content: EmptyView())
                ListRowNavigationIconLabel(color: .blue, icon: "custom.hand.point.up.left.circle.fill", title: "Hand Structures & Movements", content: EmptyView())
            }, footer: {
                Text("As apps request access, they will be added in the categories above.")
            })
            
            // Advertising Section
            Section {
                NavigationLink("Apple Advertising", destination: {})
            }
        }
        .padding([.leading, .trailing], 45)
        .navigationTitle("Privacy & Security")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Privacy & Security")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    PrivacySecurityView()
}
