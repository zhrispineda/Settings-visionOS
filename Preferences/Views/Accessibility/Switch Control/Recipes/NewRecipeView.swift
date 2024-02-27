//
//  NewRecipeView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Recipes > [Recipe]
//  Settings > Accessibility > Switch Control > Recipes > Create New Recipe...
//

import SwiftUI

struct NewRecipeView: View {
    // Variables
    var editEnabled = false
    @State var title = "New Recipe"
    @State var name = String()
    @State var timeoutEnabled = true
    @State private var timeout = 60
    @State private var switches = ["Tap Middle of Screen", "Exit Recipe"]
    
    var body: some View {
        CustomList(title: title, editEnabled: editEnabled) {
            if name != "No Switches Assigned" {
                HStack(spacing: 50) {
                    Text("Name")
                    TextField("", text: $name)
                }
            }
            
            Section(content: {
                if !name.isEmpty && name != "No Switches Assigned" {
                    ForEach($switches, id: \.self, editActions: .delete) { $option in
                        NavigationLink(destination: NewRecipeView(title: "No Switches Assigned", name: "No Switches Assigned"), label: {
                            HStack {
                                Text("No Switch Assigned")
                                    .foregroundStyle(option == "Tap Middle of Screen" ? .red : .gray)
                                Spacer()
                                Text(option)
                            }
                        })
                    }
                }
            }, header: {
                Text("Switches")
            }, footer: {
                if name.isEmpty || name == "No Switches Assigned" {
                    Text("To use Recipes, you must have at least one switch configured.")
                }
            })
            
            if name != "No Switches Assigned" {
                Section(content: {
                    Toggle("Timeout", isOn: $timeoutEnabled)
                    if timeoutEnabled {
                        Stepper(
                            value: $timeout,
                            in: 10...10800,
                            step: 10
                        ) {
                            HStack {
                                Text("\(timeout)")
                                    .frame(width: 50, alignment: .leading)
                                Text("Seconds")
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }, header: {
                    Text("Timeout")
                }, footer: {
                    Text("When a timeout is specified, Switch Control will automatically exit the recipe if no switches have been activated for the length of the timeout.")
                })
            }
        }
    }
}

#Preview {
    NavigationStack {
        NewRecipeView(title: "Example", name: "Example")
    }
}
