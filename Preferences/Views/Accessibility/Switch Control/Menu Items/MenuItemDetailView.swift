//
//  MenuItemDetailView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Menu Items > [Menu Item]
//

import SwiftUI

struct MenuItemDetailView: View {
    // Variables
    var title = String()
    @State var items: [String] = []
    @State var selected: [String] = []
    @State private var showStreamlinedFirstPage = true
    
    var body: some View {
        CustomList(title: title) {
            Section {
                Button(action: {
                    if selected.isEmpty {
                        selected = items
                    } else {
                        selected = []
                    }
                }, label: {
                    Text("\(selected.isEmpty ? "Show" : "Hide") All Items")
                        .frame(maxWidth: .infinity)
                })
            }
            
            Section {
                ForEach($items, id: \.self, editActions: .move) { $option in
                    Button(action: {
                        withAnimation {
                            selected.append(option)
                        }
                    }, label: {
                        HStack {
                            Label(option, systemImage: selected.contains(option) ? "checkmark" : "")
                        }
                    })
                }
            }
            
            if title == "Top Level" {
                Section(content: {
                    // TODO: Enable NavigationLink regardless of editMode state.
                    NavigationLink("Add Menu Items", destination: EmptyView())
                        .disabled(false)
                    Toggle("Show Streamlined First Page", isOn: $showStreamlinedFirstPage)
                }, footer: {
                    Text("When this is enabled, only the most important menu items (like Tap) will be shown on the first page.")
                })
            }
        }
        .environment(\.editMode, Binding.constant(EditMode.active))
    }
}

#Preview {
    NavigationStack {
        MenuItemDetailView(title: "Top Level")
    }
}
