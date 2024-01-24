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
            // TODO: Popovers for buttons
            Section(content: {
                Button(action: {}, label: {
                    HStack {
                        Text("Add Mail Account")
                        Spacer()
                        Image(systemName: "chevron.right").foregroundStyle(.secondary)
                    }
                })
            }, header: {
                Text("Mail")
            })
            
            Section(content: {
                Button(action: {}, label: {
                    HStack {
                        Text("Add LDAP Account")
                        Spacer()
                        Image(systemName: "chevron.right").foregroundStyle(.secondary)
                    }
                })
                Button(action: {}, label: {
                    HStack {
                        Text("Add CardDAV Account")
                        Spacer()
                        Image(systemName: "chevron.right").foregroundStyle(.secondary)
                    }
                })
            }, header: {
                Text("Contacts")
            })
            
            Section(content: {
                Button(action: {}, label: {
                    HStack {
                        Text("Add CalDAV Account")
                        Spacer()
                        Image(systemName: "chevron.right").foregroundStyle(.secondary)
                    }
                })
                Button(action: {}, label: {
                    HStack {
                        Text("Add Subscribed Calendar")
                        Spacer()
                        Image(systemName: "chevron.right").foregroundStyle(.secondary)
                    }
                })
            }, header: {
                Text("Calendars")
            })
        }
    }
}

#Preview {
    AddOtherAccountView()
        .padding()
}
