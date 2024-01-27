//
//  NumbersView.swift
//  Preferences
//
//  Settings > Accessibility > VoiceOver > Verbosity > Numbers
//

import SwiftUI

struct NumbersView: View {
    // Variables
    let options = ["Words", "Digits"]
    @State private var selected = "Words"
    
    var body: some View {
        CustomList(title: "Numbers") {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selected = option
                }, label: {
                    HStack {
                        Text(option)
                        Spacer()
                        if selected == option {
                            Image(systemName: "checkmark")
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    NumbersView()
}
