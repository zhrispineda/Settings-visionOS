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
                Section(content: {}, footer: {
                    Text("Settings will be saved when you go back to the previous page.")
                })
            }
            
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        withAnimation {
                            selected = option
                        }
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, footer: {
                switch selected {
                case "Automatic":
                    Text("Dwell will follow the trackpad when in use, otherwise it will follow the system pointer.")
                default:
                    Text("Dwell will follow the \(selected.lowercased()) only.")
                }
            })
        }
    }
}

#Preview {
    TargetView()
}
