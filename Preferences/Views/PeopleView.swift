//
//  PeopleView.swift
//  Settings-visionOS
//
//  Settings > People
//

import SwiftUI

struct PeopleView: View {
    var body: some View {
        NavigationStack {
            CustomList(title: "People") {
                Section {
                    ZStack(alignment: .leading) {
                        NavigationLink("", destination: AddAccountView())
                        .opacity(0)
                        Text("Add Account...")
                    }
                }
                
                Section {
                    ListRowNavigationLabel(title: "Sort Order", subtitle: "Last, First", content: SortOrderView())
                    ListRowNavigationLabel(title: "Display Order", subtitle: "First, Last", content: DisplayOrderView())
                    NavigationLink("Short Name", destination: ShortNameView())
                    // TODO: Popover for My Info
                    Button(action: {}, label: {
                        HStack {
                            Text("My Info")
                            Spacer()
                            Image(systemName: "chevron.right").foregroundStyle(.secondary)
                        }
                    })
                    NavigationLink("Blocked Contacts", destination: BlockedContacts())
                }
            }
        }
    }
}

#Preview {
    PeopleView()
}
