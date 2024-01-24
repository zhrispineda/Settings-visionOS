//
//  StartWeekOnView.swift
//  Preferences
//
//  Settings > Apps > Calendar > Start Week On
//

import SwiftUI

struct StartWeekOnView: View {
    // Variables
    @State private var selectedOption = "System Setting (Sunday)"

    let options = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var body: some View {
        CustomList(title: "Start Week On") {
            Section(content: {
                Button(action: { selectedOption = "System Setting (Sunday)" }, label: {
                    HStack {
                        Text("System Setting (Sunday)")
                        Spacer()
                        if selectedOption == "System Setting (Sunday)" {
                            Image(systemName: "checkmark")
                        }
                    }
                })
            }, header: {
                Text("Mirror System Setting")
            }, footer: {
                Text("When selected, Calendar will use the setting from [Language & Region](#).")
            })
            
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: { selectedOption = option }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selectedOption == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                }
            }, header: {
                Text("Calendar App Only")
            }, footer: {
                Text("This setting will apply in Calendar only. Other apps will use the system setting.")
            })
        }
    }
}

#Preview {
    StartWeekOnView()
}
