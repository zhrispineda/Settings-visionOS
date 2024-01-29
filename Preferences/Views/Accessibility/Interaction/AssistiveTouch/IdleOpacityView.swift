//
//  IdleOpacityView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > AssistiveTouch > Idle Opacity
//

import SwiftUI

struct IdleOpacityView: View {
    // Variables
    @State private var opacity = 40.0
    
    var body: some View {
        CustomList(title: "Idle Opacity") {
            Section(content: {
                HStack(spacing: 15) {
                    Slider(value: $opacity, in: 15...100)
                    Text("\(opacity, specifier: "%.0f")%")
                }
            }, footer: {
                Text("Reduces the visibility of AssistiveTouch when not in use.")
            })
        }
    }
}

#Preview {
    IdleOpacityView()
}
