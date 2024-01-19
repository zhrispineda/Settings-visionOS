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
        List {
            ForEach(keyboards, id: \.self) { keyboard in
                Text(keyboard)
            }
            .onMove { prev, new in
                keyboards.move(fromOffsets: prev, toOffset: new)
            }
        }
        .padding([.leading, .trailing], 40)
        .navigationTitle("Keyboards")
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Keyboards")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
            })
        }
    }
}

#Preview {
    KeyboardsView()
}
