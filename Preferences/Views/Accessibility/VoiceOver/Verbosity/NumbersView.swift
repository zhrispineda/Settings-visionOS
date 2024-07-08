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
        NumbersView()
    }
}
