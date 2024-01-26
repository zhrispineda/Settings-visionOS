//
//  AppPermissionView.swift
//  Preferences
//
//  Template for managing apps with access to a specific permission
//

import SwiftUI

struct AppPermissionView: View {
    var permissionName: String = "Focus"
    
    var body: some View {
        CustomList(title: permissionName) {
            if permissionName == "Calendars" {
                Section(content: {
                    VStack(alignment: .leading) {
                        ZStack {
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                .foregroundStyle(Color(UIColor.systemGray5))
                                .shadow(radius: 5.0)
                                .frame(width: 325, height: 80)
                                .padding(.top, 40)
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                .foregroundStyle(Color(UIColor.systemGray5))
                                .shadow(radius: 5.0)
                                .frame(width: 375, height: 80)
                                .padding(.top, 20)
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                .foregroundStyle(Color(UIColor.systemGray5))
                                .shadow(radius: 5.0)
                                .frame(width: 425, height: 80)
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("FRIDAY, FEB 2")
                                        .foregroundColor(.red)
                                        .font(.caption)
                                    HStack {
                                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                            .foregroundStyle(Color(UIColor.systemPurple))
                                            .frame(width: 5, height: 40)
                                        VStack(alignment: .leading) {
                                            Text("**Groundhog Day**")
                                                .font(.caption)
                                                .foregroundStyle(.secondary)
                                            Text("**all-day**")
                                                .font(.caption)
                                                .foregroundStyle(.secondary)
                                        }
                                    }
                                }
                                .padding(15)
                                Spacer()
                            }
                        }
                        .drawingGroup()
                        .padding()
                        .padding(.top, -30)
                        Text("**Full Calendar Access**")
                            .font(.callout)
                        Text("3 calendars, 47 events in the next year")
                            .foregroundStyle(.secondary)
                            .font(.caption)
                    }
                }, footer: {
                    Text("Calendar events may include additional data, such as location, email addresses, or notes.")
                })
            }
            
            if permissionName == "Photos" {
                Section(content: {
                    VStack(alignment: .leading) {
                        Text("**Full Photo Library Access**")
                        Text("No Items")
                            .foregroundStyle(.secondary)
                    }
                    .padding(3)
                }, footer: {
                    Text("Photos may contain data associated with location, depth information, captions, and audio.")
                })
            }
            
            if permissionName == "Focus" {
                Section(content: {}, footer: {
                    Text("Your Focus status tells apps and people that you have\nnotifications silenced.")
                })
            }
            
            Section(content: {}, header: {
                if permissionName == "Focus" {
                    Text("Shared With")
                }
            },footer: {
                switch permissionName {
                case "Calendars":
                    Text("Apps that have requested access to your calendar events will appear here.")
                case "Contacts", "Reminders":
                    Text("Applications that have requested the ability to your \(permissionName.lowercased()) will appear here.")
                case "Photos":
                    Text("Apps that have requested the ability to your \(permissionName.lowercased()) will appear here.")
                case "Local Network":
                    Text("Apps that have requested permission to find and communicate with devices on your local network will appear here.")
                case "Microphone":
                    Text("Applications that have requested access to the microphone will appear here.")
                case "Speech Recognition":
                    Text("Applications that have requested access to speech recognition will appear here. Speech recognition sends recorded voice to Apple to process your requests.")
                case "Persona Virtual Camera":
                    Text("Applications that have requested access to the Persona virtual camera will appear here.")
                case "Home":
                    Text("Applications that have requested access to home data will appear here.")
                case "Media & Apple Music":
                    Text("Applications that have requested access to Apple Music, your music and video activity, and your media library will appear here.")
                case "Files & Folders":
                    Text("Applications that have requested access to files and folders will appear here.")
                case "Focus":
                    Text("Apps that have requested the ability to see and share your Focus status will appear here.")
                default:
                    Text("Applications that have requested the ability to use \(permissionName) will appear here.")
                }
            })
        }
    }
}

#Preview {
    AppPermissionView()
}
