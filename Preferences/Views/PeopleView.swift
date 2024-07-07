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
                    Button {} label: {
                        NavigationLink("My Info") {}
                    }
                    NavigationLink("Blocked Contacts", destination: BlockedContacts())
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        PeopleView()
    }
}
