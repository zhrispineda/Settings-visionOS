//
//  CursorColorView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Cursor Color
//

import SwiftUI

struct CursorColorView: View {
    let colors = ["Blue", "Red", "Green", "Yellow", "Orange"]
    @State private var selected = "Blue"
    
    var body: some View {
        CustomList(title: "Cursor Color") {
            ForEach(colors, id: \.self) { color in
                Button {
                    selected = color
                } label: {
                    HStack {
                        Image(systemName: "circle.fill")
                            .foregroundStyle(Color[color])
                            .font(.caption)
                        Text(color)
                        Spacer()
                        Image(systemName: "\(selected == color ? "checkmark" : "")")
                    }
                }
            }
        }
    }
}

#Preview {
    CursorColorView()
}
