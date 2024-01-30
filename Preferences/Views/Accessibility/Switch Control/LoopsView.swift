//
//  LoopsView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Loops
//

import SwiftUI

struct LoopsView: View {
    // Variables
    @State private var selected = "4"
    let options = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    var body: some View {
        CustomList(title: "Loops") {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                        }
                    })
                }
            }, footer: {
                Text("Hide the cursor after each item on screen has been visited a specific number of times.")
            })
        }
    }
}

#Preview {
    LoopsView()
}
