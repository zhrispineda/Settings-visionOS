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
        List(options, id: \.self) { option in
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
        .padding([.leading, .trailing], 40)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Keyboard Type")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    KeyboardTypeView()
}
