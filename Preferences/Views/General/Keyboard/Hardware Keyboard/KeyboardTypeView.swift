//
//  KeyboardTypeView.swift
//  Settings-visionOS
//
//  Settings > Keyboard > Hardware Keyboard > Keyboard Type
//

import SwiftUI

struct KeyboardTypeView: View {
    // Variables
    @State private var selected = "ANSI (U.S.)"
    let options = ["ANSI (U.S.)", "ISO (International)", "JIS (Japan)"]
    
    var body: some View {
        CustomList(title: "Keyboard Type") {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
    }
}

#Preview {
    NavigationStack {
        KeyboardTypeView()
    }
}
