//
//  ColorView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > Pointer Control > Color
//

import SwiftUI

struct ColorView: View {
    // Variables
    @State private var width = 0.0
    @State private var selected = "None"
    let colors = ["None", "White", "Blue", "Red", "Green", "Yellow", "Orange"]
    
    var body: some View {
        CustomList(title: "Color") {
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
            
            Section(content: {
                Slider(value: $width, in: 0...100)
            }, header: {
                Text("Border Width")
            })
        }
    }
}

extension Color {
    static subscript(name: String) -> Color {
        switch name {
        case "Default":
            return Color.blue
        case "Gray":
            return Color.gray
        case "White":
            return Color.white
        case "Blue":
            return Color.blue
        case "Red":
            return Color.red
        case "Green":
            return Color.green
        case "Yellow":
            return Color.yellow
        case "Orange":
            return Color.orange
        case "Pink":
            return Color.pink
        case "Purple":
            return Color.purple
        default:
            return Color.clear
        }
    }
}

#Preview {
    ColorView()
}
