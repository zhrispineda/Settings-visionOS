//
//  FocusPreferencesView.swift
//  Preferences
//
//  A template to manage preferences for a focus.
//
//  Parameters:
//  focusName: String, icon: String, color: Color
//
//  Example:
//  FocusPreferencesView(focusName: "Personal Focus", icon: "person.circle.fill", color: .purple)
//

import SwiftUI

struct FocusPreferencesView: View {
    var focusName = String()
    var icon = String()
    var color = Color.gray
    
    var body: some View {
        List {
            Section(content: {
                ListRowNavigationIconLabel(title: "Allowed People", subtitle: "None allowed", content: AnyView(AllowedPeopleView()))
                ListRowNavigationIconLabel(title: "Allowed Apps", subtitle: "None allowed")
            }, header: {
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: icon)
                            .foregroundStyle(.white, color.gradient)
                            .font(.system(size: 64))
                        Spacer()
                    }
                    .padding(.top, 5)
                    .padding(.bottom, 1)
                    Text(focusName)
                        .font(.title)
                        .listRowBackground(Color.clear)
                        .padding(.bottom, 10)
                }
            })
            
            Section(content: {
                ListRowNavigationIconLabel(color: .indigo, icon: "clock.fill", title: "12:00 AM", subtitle: "Every day", status: "Off")
                // Add popover for button
                Button(action: {}, label: {
                    Label("Add Schedule", image: "")
                })
            }, header: {
                VStack(alignment: .leading) {
                    Text("Set a Schedule")
                    Text("Have this Focus turn on automatically at a set time, location, or while using a certain app.")
                        .lineLimit(2)
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }
            })
            
            if focusName != "Do Not Disturb" {
                Section {
                    Button("Delete Focus", action: {}).foregroundStyle(.red)
                }
            }
        }
        .padding([.leading, .trailing], 45)
    }
}

#Preview {
    FocusPreferencesView(focusName: "Personal Focus", icon: "person.circle.fill", color: .purple)
}
