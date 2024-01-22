//
//  FocusView.swift
//  Settings-visionOS
//
//  Settings > Focus
//

import SwiftUI

struct FocusView: View {
    var body: some View {
        List {
            Section(content: {
                // Do Not Disturb
                NavigationLink {
                    FocusPreferencesView(focusName: "Do Not Disturb", icon: "moon.circle.fill", color: .indigo)
                } label: {
                    HStack {
                        Image(systemName: "moon.fill").imageScale(.large)
                            .frame(width: 30)
                            .foregroundColor(.indigo)
                        Text("Do Not Disturb")
                            .padding(.horizontal, 10)
                    }
                }
                
                // Mindfulness
                NavigationLink {
                    FocusPreferencesView(focusName: "Mindfulness", icon: "circle.hexagongrid.circle.fill", color: .mint)
                } label: {
                    HStack {
                        Image(systemName: "circle.hexagonpath").imageScale(.large)
                            .frame(width: 30)
                            .foregroundColor(.mint)
                        Text("Mindfulness")
                            .padding(.horizontal, 10)
                        Spacer()
                        Text("Set Up").foregroundStyle(.secondary)
                    }
                }
                
                // Personal
                NavigationLink {
                    FocusPreferencesView(focusName: "Personal", icon: "person.circle.fill", color: .purple)
                } label: {
                    HStack {
                        Image(systemName: "person.fill").imageScale(.large)
                            .frame(width: 30)
                            .foregroundColor(.purple)
                        Text("Personal")
                            .padding(.horizontal, 10)
                        Spacer()
                        Text("Set Up").foregroundStyle(.secondary)
                    }
                }
                
                // Sleep
                NavigationLink {
                    FocusPreferencesView(focusName: "Sleep", icon: "bed.double.circle.fill", color: .cyan)
                } label: {
                    HStack {
                        Image(systemName: "bed.double.fill").imageScale(.large)
                            .frame(width: 30)
                            .foregroundColor(.cyan)
                        Text("Sleep")
                            .padding(.horizontal, 10)
                        Spacer()
                        Text("Set Up").foregroundStyle(.secondary)
                    }
                }
                
                // Work
                NavigationLink {
                    FocusPreferencesView(focusName: "Work", icon: "person.crop.square.fill", color: .cyan)
                } label: {
                    HStack {
                        Image(systemName: "person.crop.square.fill").imageScale(.large)
                            .frame(width: 30)
                            .foregroundColor(.cyan)
                        Text("Work")
                            .padding(.horizontal, 10)
                        Spacer()
                        Text("Set Up").foregroundStyle(.secondary)
                    }
                }
            }, footer: {
                Text("Focus lets you customize your devices and silence calls and notifications. Turn it on and off in Control Center.")
            })
            
            // Share Across Devices
            Section(content: {
                Toggle("Share Across Devices", isOn: .constant(false))
                    .disabled(true)
            }, footer: {
                Text("Focus syncing is not supported on this device.")
            })
            
            // Focus Status
            Section(content: {
                ListRowNavigationLabel(title: "Focus Status", subtitle: "Off", content: AnyView(EmptyView()))
            }, footer: {
                Text("When you give an app permission, it can share that you have notifications silenced when using Focus.")
            })
        }
        .padding([.leading, .trailing], 45)
        .navigationTitle("Focus")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Focus")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: 40)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                Button("\(Image(systemName: "plus"))", action: {})
            })
        }
    }
}

#Preview {
    FocusView()
}
