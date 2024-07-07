//
//  PurchasesView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > iTunes & App Store Purchases
//

import SwiftUI

struct PurchasesView: View {
    // Variables
    @State private var selected = "Don't Require"
    let options = ["Always Require", "Don't Require"]
    
    var body: some View {
        CustomList(title: "iTunes & App Store Purchases") {
            Section("Store Purchases & Redownloads") {
                ListRowNavigationLabel(title: "Installing Apps", subtitle: "Allow", content: AllowDenyView(title: "Installing Apps"))
                ListRowNavigationLabel(title: "Deleting Apps", subtitle: "Allow", content: AllowDenyView(title: "Deleting Apps"))
                ListRowNavigationLabel(title: "In-app Purchases", subtitle: "Allow", content: AllowDenyView(title: "In-app Purchases"))
            }
            
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } header: {
                Text("Require Password")
            } footer: {
                Text("Require a password for additional purchases after making a purchase from the iTunes, Book, or App Store.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        PurchasesView()
    }
}
