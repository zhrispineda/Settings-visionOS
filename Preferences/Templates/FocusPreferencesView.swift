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
    // Variables
    var focusName = String()
    var icon = String()
    var color = Color.gray
    @State private var showingDeleteAlert = false
    
    var body: some View {
        List {
            Section(content: {
                ListRowNavigationIconLabel(title: "\(focusName == "Personal" ? "Silenced" : "Allowed") People", subtitle: "None \(focusName == "Personal" ? "silenced" : "allowed")", content: AnyView(AllowedPeopleView(focusName: focusName)))
                ListRowNavigationIconLabel(title: "\(focusName == "Personal" ? "Silenced" : "Allowed") Apps", subtitle: "None\(focusName == "Personal" ? "" : " allowed")", content: AnyView(FocusAllowedAppsView(focusName: focusName)))
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
                    Text(focusName == "Do Not Disturb" ? "Do Not Disturb" : "\(focusName) Focus")
                        .font(.title)
                        .listRowBackground(Color.clear)
                        .padding(.bottom, 10)
                    if focusName != "Do Not Disturb" {
                        Button("Edit", action: {})
                            .padding(.bottom)
                    }
                }
            })
            
            Section(content: {
                if focusName == "Sleep" {
                    HStack(alignment: .top) {
                        Image("applehealth")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 42)
                            .padding(.trailing, 3)
                        Text("Sleep Focus follows the Sleep schedule you've set on iPhone. To add or edit your schedule, open the Health app on iPhone, tap Browse, then Sleep.")
                    }
                } else {
                    if focusName == "Mindfulness" {
                        ListRowNavigationIconLabel(color: .mint, icon: "circle.hexagongrid.circle.fill", title: "Mindfulness", subtitle: "When you start a session", status: "On", content: AnyView(MindfulnessView()))
                    } else if focusName == "Personal" {
                        ListRowNavigationIconLabel(color: .purple, icon: "power.circle.fill", title: "Smart Activation", subtitle: "Turns on automatically", status: "Off", content: AnyView(SmartActivationView(focusName: focusName)))
                    } else if focusName == "Work" {
                        ListRowNavigationIconLabel(color: .cyan, icon: "power.circle.fill", title: "Smart Activation", subtitle: "Turns on automatically", status: "Off", content: AnyView(SmartActivationView(focusName: focusName)))
                    } else {
                        ListRowNavigationIconLabel(color: .indigo, icon: "clock.fill", title: "12:00 AM", subtitle: "Every day", status: "Off", content: AnyView(ScheduleView()))
                    }
                    // Add popover for button
                    Button(action: {}, label: {
                        Label("Add Schedule", image: "")
                    })
                }
            }, header: {
                if focusName == "Sleep" {
                    Text("Schedule")
                } else {
                    VStack(alignment: .leading) {
                        Text("Set a Schedule")
                        Text("Have this Focus turn on automatically at a set time, location, or while using a certain app.")
                            .lineLimit(2)
                            .foregroundStyle(.secondary)
                            .font(.subheadline)
                    }
                }
            })
            
            if focusName != "Do Not Disturb" {
                Section {
                    Button("Delete Focus", action: {
                        showingDeleteAlert.toggle()
                    })
                    .foregroundStyle(.red)
                    .alert("Do you want to delete this Focus?", isPresented: $showingDeleteAlert) {
                        Button("Delete Schedule", role: .destructive) {}
                        Button("Cancel", role: .cancel) {}
                    }
                }
            }
        }
        .padding([.leading, .trailing], 45)
    }
}

#Preview {
    FocusPreferencesView(focusName: "Sleep", icon: "bed.double.circle.fill", color: .cyan)
}
