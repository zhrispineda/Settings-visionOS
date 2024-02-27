//
//  GlidingCursorView.swift
//  Preferences
//
//  Settings > Accessibility > Switch Control > Gliding Cursor
//

import SwiftUI

struct GlidingCursorView: View {
    // Variables
    @State private var selected = "Refined"
    let options = ["Single", "Refined", "Precise"]
    @State private var cursorSpeed = 31
    
    var body: some View {
        CustomList(title: "Gliding Cursor") {
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
            }, header: {
                Text("Selection Mode")
            }, footer: {
                Text("""
                    Single mode allows you to make one vertical and one horizontal selection. This may be faster for larger selection targets.
                    
                    Refined mode allows you to refine your targeting in each direction, with a second scan in the range of your initial selection.
                    
                    Precise mode adds a final low-speed scan for very precise targeting.
                    """)
            })
            
            Section(content: {
                Stepper(
                    value: $cursorSpeed,
                    in: 1...120,
                    step: 1
                ) {
                    HStack {
                        Text("\(cursorSpeed)")
                    }
                }
            }, header: {
                Text("Gliding Cursor Speed")
            }, footer: {
                Text("The speed at which the gliding cursor moves across the screen.")
            })
        }
    }
}

#Preview {
    GlidingCursorView()
}
