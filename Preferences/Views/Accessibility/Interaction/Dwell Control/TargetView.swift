//
//  TargetView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > Dwell Control > Target
//

import SwiftUI

struct TargetView: View {
    // Variables
    @State private var selected = "Automatic"
    let options = ["Automatic", "System Pointer", "Trackpad"]
    
    var body: some View {
        CustomList(title: "Target") {
            if selected != "Automatic" {
                Section {} footer: {
                    Text("Settings will be saved when you go back to the previous page.")
                }
            }
            
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                switch selected {
                case "Automatic":
                    Text("Dwell will follow the trackpad when in use, otherwise it will follow the system pointer.")
                default:
                    Text("Dwell will follow the \(selected.lowercased()) only.")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        TargetView()
    }
}
