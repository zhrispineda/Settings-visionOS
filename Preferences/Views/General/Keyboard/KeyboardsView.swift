//
//  KeyboardsView.swift
//  Settings-visionOS
//
//  Settings > Keyboard > Keyboards
//

import SwiftUI

struct KeyboardsView: View {
    // Variables
    @State private var keyboards = ["English", "Emoji"]
    
    var body: some View {
        CustomList(title: "Keyboards", editEnabled: true) {
            ForEach(keyboards, id: \.self) { keyboard in
                Text(keyboard)
            }
            .onMove { prev, new in
                keyboards.move(fromOffsets: prev, toOffset: new)
            }
        }
    }
}

#Preview {
    KeyboardsView()
}
