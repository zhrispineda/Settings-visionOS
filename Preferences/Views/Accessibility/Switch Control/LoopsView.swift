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
            Section {
                Picker("", selection: $selected) {
                    ForEach(options, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            } footer: {
                Text("Hide the cursor after each item on screen has been visited a specific number of times.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        LoopsView()
    }
}
