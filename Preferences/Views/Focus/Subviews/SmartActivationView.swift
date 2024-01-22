//
//  SmartActivationView.swift
//  Preferences
//
//  Settings > Focus > Personal > Smart Activation
//

import SwiftUI

struct SmartActivationView: View {
    // Variables
    var focusName = String()
    @State private var smartActivationEnabled = false
    @State private var showingDeleteAlert = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Smart Activation", isOn: $smartActivationEnabled)
            }, footer: {
                Text("Automatically turn \(focusName) Focus on at relevant times throughout the day based on signals like your location, app usage, and more.")
            })
            
            Section {
                Button("Delete Schedule", action: { showingDeleteAlert.toggle() })
                    .foregroundStyle(.red)
                    .alert("Do you want to delete this schedule?", isPresented: $showingDeleteAlert) {
                        Button("Delete Schedule", role: .destructive) {}
                        Button("Cancel", role: .cancel) {}
                    }
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Smart Activation")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    SmartActivationView()
}
