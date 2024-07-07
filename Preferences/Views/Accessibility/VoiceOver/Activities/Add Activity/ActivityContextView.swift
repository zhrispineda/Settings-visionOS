//
//  ActivityContextView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Activities > Add Activity > Context
//

import SwiftUI

struct ActivityContextView: View {
    // Variables
    @State private var selected: [String] = []
    let options = ["Word Processing", "Narrative", "Messaging", "Social Media", "Spreadsheet", "Source Code", "Console"]
    
    var body: some View {
        CustomList(title: "Context") {
            ForEach(options, id: \.self) { option in
                Button {
                    if let index = selected.firstIndex(of: option) {
                        selected.remove(at: index)
                    } else {
                        selected.append(option)
                    }
                } label: {
                    HStack {
                        Text(option)
                        Spacer()
                        if selected.contains(option) {
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ActivityContextView()
}
