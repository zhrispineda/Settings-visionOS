//
//  BlockedContacts.swift
//  Preferences
//
//  Settings > People > Blocked Contacts
//

import SwiftUI

struct BlockedContacts: View {
    var body: some View {
        List {
            
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Blocked Contacts")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    BlockedContacts()
}
