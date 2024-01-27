//
//  QuickNavAnnouncementsView.swift
//  Preferences
//
//  Template for selecting which verbosity methods to use.
//

import SwiftUI

struct VerbosityMethodsView: View {
    var title = String()
    var options = ["Speak", "Play Sound", "Change Pitch", "Braille", "Do Nothing"]
    @State var selected = ["Play Sound"]
    @State private var firstItemOnlyEnabled = false
    
    var body: some View {
        CustomList(title: title) {
            Section {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        if option == "Do Nothing" {
                            selected = ["Do Nothing"]
                        } else {
                            if let index = selected.firstIndex(of: option) {
                                if selected.count > 1 {
                                    if option == "Speak" && selected.contains("Change Pitch") {
                                        if let changePitch = selected.firstIndex(of: "Change Pitch") {
                                            selected.remove(at: changePitch)
                                        }
                                        if let speak = selected.firstIndex(of: "Speak") {
                                            selected.remove(at: speak)
                                        }
                                    } else {
                                        selected.remove(at: index)
                                    }
                                }
                                if selected.isEmpty  {
                                    selected = ["Do Nothing"]
                                }
                            } else if option == "Change Pitch" && !selected.contains("Speak") {
                                selected.append("Speak")
                                selected.append("Change Pitch")
                            } else {
                                if selected == ["Do Nothing"] {
                                    selected = []
                                }
                                selected.append(option)
                            }
                        }
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selected.contains(option) {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }
            
            if title == "Actions" {
                Toggle("First Item Only", isOn: $firstItemOnlyEnabled)
            }
        }
    }
}

#Preview {
    VerbosityMethodsView()
}
