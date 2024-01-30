//
//  WordColorView.swift
//  Preferences
//
//  Settings > Accessibility > Spoken Content > Highlight Content > Word Color
//

import SwiftUI

struct WordColorView: View {
    // Variables
    var title = String()
    @State private var selected = "Default"
    let colors = ["Default", "Blue", "Yellow", "Green", "Pink", "Purple"]
    
    var body: some View {
        CustomList(title: title) {
            Section {
                ForEach(colors, id: \.self) { color in
                    Button(action: {
                        selected = color
                    }, label: {
                        HStack {
                            Image(systemName: "circle.fill")
                                .foregroundStyle(Color[color])
                                .font(.caption)
                            Text(color)
                            Spacer()
                            Image(systemName: "\(selected == color ? "checkmark" : "")")
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    WordColorView()
}
