//
//  MovementToleranceView.swift
//  Preferences
//
//  Settings > Accessibility > Interaction > Dwell Control > Movement Tolerance
//

import SwiftUI

struct MovementToleranceView: View {
    // Variables
    @State private var tolerance = 30.0
    
    var body: some View {
        CustomList(title: "Movement Tolerance") {
            Section(content: {
                Slider(value: $tolerance, in: 0...100)
            }, footer: {
                Text("The distance you can move while dwelling on an item. If you move beyond this limit, the dwell action isn't performed.")
            })
        }
    }
}

#Preview {
    MovementToleranceView()
}
