//
//  SystemNotificationsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > System Notifications
//

import SwiftUI

struct SystemNotificationsView: View {
    @State private var selected = ["Speak", "Braille"]
    let options = ["Speak", "Braille", "Do Nothing"]
    
    var body: some View {
        CustomList(title: "System Notifications") {
            Section {
                ForEach(options, id: \.self) { option in
                    Button {
                        if option == "Do Nothing" {
                            selected = ["Do Nothing"]
                        } else {
                            if let index = selected.firstIndex(of: "Do Nothing") {
                                selected.remove(at: index)
                            }
                            if let index = selected.firstIndex(of: option) {
                                selected.remove(at: index)
                            } else {
                                selected.append(option)
                            }
                        }
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selected.contains(option) {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            } header: {
                Text("Banner Notifications")
            } footer: {
                Text("Determines what VoiceOver will output when a banner notification appears.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        SystemNotificationsView()
    }
}
