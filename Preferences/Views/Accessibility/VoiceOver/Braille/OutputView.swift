//
//  OutputView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Braille > Output
//

import SwiftUI

struct OutputView: View {
    // Variables
    let selections = ["Uncontracted Six-dot Braille", "Uncontracted Eight-dot Braille", "Contracted Braille"]
    @State private var selected = "Uncontracted Six-dot Braille"
    
    var body: some View {
        CustomList(title: "Output") {
            ForEach(selections, id: \.self) { selection in
                Button(action: {
                    selected = selection
                }, label: {
                    HStack {
                        Text(selection)
                        Spacer()
                        if selection == selected {
                            Image(systemName: "checkmark")
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    OutputView()
}
