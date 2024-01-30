//
//  GlidingCursorView.swift
//  Preferences
//
//  Created by Chris on 1/29/24.
//

import SwiftUI

struct GlidingCursorView: View {
    // Variables
    @State private var selected = "Refined"
    let options = ["Single", "Refined", "Precise"]
    @State private var cursorSpeed = 31.0
    
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
                HStack(spacing: 15) {
                    Text("\(cursorSpeed, specifier: "%.0f")")
                    Spacer()
                    Button(action: {
                        cursorSpeed -= 1
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .secondary.opacity(0.3))
                    })
                    .buttonStyle(.plain)
                    .disabled(cursorSpeed < 1.01)
                    Button(action: {
                        cursorSpeed += 1
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.extraLargeTitle2)
                            .fontWeight(.medium)
                            .foregroundStyle(.white, .secondary.opacity(0.3))
                    })
                    .buttonStyle(.plain)
                    .disabled(cursorSpeed > 119.99)
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
