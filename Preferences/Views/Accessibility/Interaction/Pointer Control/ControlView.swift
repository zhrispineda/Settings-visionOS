//
//  ControlView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > Pointer Control > Control
//

import SwiftUI

struct ControlView: View {
    // Variables
    @State private var selected = "Eyes"
    @State private var previousSelection = String()
    let options = ["Eyes", "Head", "Wrist", "Index Finger"]
    @State private var presentingChoiceAlert = false
    @State private var presentingSelectionAlert = false
    @State private var pendingChoice = String()
    @State private var handChoice = String()
    @State private var showDepthRay = false
    @State private var sensitivity = 30.00
    
    var body: some View {
        CustomList(title: "Control") {
            Section {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        previousSelection = selected
                        if option == "Head" || option == "Eyes" {
                            selected = option
                            presentingSelectionAlert.toggle()
                        } else {
                            pendingChoice = option
                            presentingChoiceAlert.toggle()
                        }
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                    .alert("Important", isPresented: $presentingSelectionAlert) {
                        Button("Confirm") {}
                            .onAppear {
                                Task { @MainActor in
                                    try await Task.sleep(for: .seconds(30))
                                    if presentingSelectionAlert {
                                        presentingSelectionAlert.toggle()
                                        selected = previousSelection
                                    }
                                }
                            }
                    } message: {
                        Text("Please confirm your selection,\notheriwse you will be switched back\nto your last selection after 30\nseconds.")
                    }
                    .alert(pendingChoice, isPresented: $presentingChoiceAlert) {
                        Button("Left Hand") {
                            selected = pendingChoice
                            handChoice = "Left"
                            presentingSelectionAlert.toggle()
                        }
                        Button("Right Hand") {
                            selected = pendingChoice
                            handChoice = "Right"
                            presentingSelectionAlert.toggle()
                        }
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("Please select which hand will be used for Pointer Control.")
                    }
                }
            }
            
            if selected == "Wrist" || selected == "Index Finger" {
                Section {
                    ListRowNavigationLabel(title: "Handedness", subtitle: handChoice, content: OnOffView(title: "Handedness", selectedOption: handChoice, options: ["Right", "Left"]))
                    Toggle("Show Depth Ray", isOn: $showDepthRay)
                }
            }
            
            if selected != "Eyes" {
                Section(content: {
                    Slider(value: $sensitivity, in: 0...100)
                }, header: {
                    Text("Movement Sensitivity")
                })
            }
        }
    }
}

#Preview {
    NavigationStack {
        ControlView()
    }
}
