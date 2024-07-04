//
//  OnOffView.swift
//  Preferences
//
//  Template for On Off list views.
//
//  Parameters:
//  title: String, selectedOption: String, options: [String]
//

import SwiftUI

struct OnOffView: View {
    // Variables
    var title = String()
    @State var selected = "On"
    var options = ["Off", "On"]
    
    var body: some View {
        CustomList(title: title) {
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
    OnOffView()
}
