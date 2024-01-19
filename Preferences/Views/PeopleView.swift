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
            List {
                Section {
                    Button("Add Account...", action: { print("Add Account pressed") })
                }
                
                Section {
                    ListRowNavigationLabel(title: "Sort Order", subtitle: "Last, First", content: AnyView(EmptyView()))
                    ListRowNavigationLabel(title: "Display Order", subtitle: "First, Last", content: AnyView(EmptyView()))
                    NavigationLink("Short Name", destination: EmptyView())
                    NavigationLink("My Info", destination: EmptyView())
                    NavigationLink("Blocked Contacts", destination: EmptyView())
                }
            }
            .padding([.leading, .trailing], 30)
            .navigationTitle("People")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("People")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                })
            }
        }
    }
}

#Preview {
    PeopleView()
}
