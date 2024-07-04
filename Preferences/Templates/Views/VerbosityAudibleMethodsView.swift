//
//  DeletingTextView.swift
//  Preferences
//
//  Template for selecting which audible method to use.
//
//  Parameters:
//  title: String, options: [String], selected: String
//

import SwiftUI

struct VerbosityAudibleMethodsView: View {
    // Variables
    var title = String()
    let options = ["Speak", "Play Sound", "Change Pitch", "Do Nothing"]
    @State var selected = "Change Pitch"
    
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
    NavigationStack {
        VerbosityAudibleMethodsView()
    }
}
