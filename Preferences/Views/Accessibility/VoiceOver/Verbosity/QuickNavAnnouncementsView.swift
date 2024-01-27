//
//  QuickNavAnnouncementsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > QuickNav Announcements
//

import SwiftUI

struct QuickNavAnnouncementsView: View {
    let options = ["Speak", "Play Sound", "Change Pitch", "Braille", "Do Nothing"]
    @State private var selected = ["Play Sound"]
    
    var body: some View {
        CustomList(title: "QuickNav Announcements") {
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
        }
    }
}

#Preview {
    QuickNavAnnouncementsView()
}
