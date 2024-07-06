//
//  AddOtherAccountView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Add Account > Other
//  Settings > People > Add Account > Other
//

import SwiftUI

struct AddOtherAccountView: View {
    var body: some View {
        CustomList(title: "Add Account") {
            Section("Mail") {
                Button {} label: {
                    NavigationLink("Add Mail Account") {}
                }
            }
            
            Section("Contacts") {
                Button {} label: {
                    NavigationLink("Add LDAP Account") {}
                }
                Button {} label: {
                    NavigationLink("Add CardDAV Account") {}
                }
            }
            
            Section("Calendars") {
                Button {} label: {
                    NavigationLink("Add CardDAV Account") {}
                }
                Button {} label: {
                    NavigationLink("Add Subscribed Calendar") {}
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddOtherAccountView()
    }
}
