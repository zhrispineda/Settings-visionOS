//
//  KeyboardTypeView.swift
//  Settings-visionOS
//
//  Settings > Keyboard > Hardware Keyboard > Keyboard Type
//

import SwiftUI

struct KeyboardTypeView: View {
    // Variables
    @State private var selectedOption: String? = "ANSI (U.S.)"
    
    let options = ["ANSI (U.S.)", "ISO (International)", "JIS (Japan)"]
    
    var body: some View {
        CustomList(title: "Keyboard Type") {
            ForEach(options, id: \.self) { option in
                Button(action: { selectedOption = option }, label: {
                    HStack {
                        Text(option)
                        Spacer()
                        if selectedOption == option {
                            Image(systemName: "checkmark")
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    KeyboardTypeView()
}
