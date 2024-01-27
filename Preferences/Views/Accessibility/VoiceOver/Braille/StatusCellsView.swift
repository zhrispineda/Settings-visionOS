//
//  StatusCellsView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Status Cells
//

import SwiftUI

struct StatusCellsView: View {
    // Variables
    @State private var showGeneralStatusEnabled = false
    @State private var showTextStatusEnabled = false
    
    var body: some View {
        CustomList(title: "Status Cells") {
            Section(content: {
                Button("Left", action: {})
                Button("Right", action: {})
            }, header: {
                Text("Status Cells Position")
            })
            
            Section {
                Toggle("Show General Status", isOn: $showGeneralStatusEnabled)
                Toggle("Show Text Status", isOn: $showTextStatusEnabled)
            }
        }
    }
}

#Preview {
    StatusCellsView()
}
