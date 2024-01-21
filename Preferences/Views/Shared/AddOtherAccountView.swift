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
        List {
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
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Add Account")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    AddOtherAccountView()
        .padding()
}
