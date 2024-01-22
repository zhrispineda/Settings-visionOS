//
//  AllowedPeopleView.swift
//  Preferences
//
//  Settings > Focus > [Focus] > Allowed People
//

import SwiftUI

struct AllowedPeopleView: View {
    // Variables
    var focusName = String()
    let notificationsFromSelections = ["Allow Some People", "Silence Some People"]
    let callsFromSelections = ["Everybody", "Allowed People Only", "Favorites", "Contacts Only"]
    @State private var notificationsFromSelection = "Allow Some People"
    @State private var callsFromSelection = "Allowed People Only"
    @State private var allowCallsSilencedPeopleEnabled = false
    @State private var allowRepeatedCallsEnabled = true
    
    var body: some View {
        List {
            Section {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Notifications")
                        Text("When \(focusName == "Do Not Disturb" ? "Do Not Disturb" : "\(focusName) Focus") in on, notifications from \(notificationsFromSelection == "Allow Some People" ? "people you select will be allowed. All others" : "selected people") will be silenced and sent to Notification Center.")
                            .foregroundStyle(.secondary)
                            .font(.subheadline)
                    }
                    Picker("", selection: $notificationsFromSelection) {
                        ForEach(notificationsFromSelections, id: \.self) { selection in
                            Text(selection)
                        }
                    }
                }
            }
            
            Section {
                VStack {
                    ZStack {
                        Circle()
                            .frame(width: 65, height: 65)
                            .opacity(0.2)
                        Image(systemName: "plus")
                            .font(.title)
                            
                    }
                    Text("Add People")
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
            }
            
            Section {
                if notificationsFromSelection == "Allow Some People" && focusName != "Work" {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Allow calls from")
                            Group {
                                switch callsFromSelection {
                                case "Everybody":
                                    Text("All phone calls will be allowed.")
                                case "Allowed People Only":
                                    Text("Allow incoming calls from only the contacts you added to the Focus and Emergency Bypass contacts.")
                                case "Favorites":
                                    Text("Allow incoming calls from only the contacts you added to the Focus, your favorites and Emergency Bypass contacts.")
                                default:
                                    Text("Allow incoming calls from your contacts.")
                                }
                            }
                            .foregroundStyle(.secondary)
                            .font(.callout)
                        }
                        Picker("", selection: $callsFromSelection) {
                            ForEach(callsFromSelections, id: \.self) { selection in
                                Text(selection)
                            }
                        }
                    }
                    if callsFromSelection != "Everybody" {
                        Toggle(isOn: $allowRepeatedCallsEnabled, label: {
                            Text("Allow repeated calls")
                            Text("A second call from the same person within three minutes will not be silenced.")
                        })
                    }
                } else {
                    Toggle("Allow Calls from Silenced People", isOn: $allowCallsSilencedPeopleEnabled)
                    if focusName == "Work" {
                        Toggle(isOn: $allowRepeatedCallsEnabled, label: {
                            Text("Allow repeated calls")
                            Text("A second call from the same person within three minutes will not be silenced.")
                        })
                    }
                }
            }
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Notifications")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    AllowedPeopleView()
}
