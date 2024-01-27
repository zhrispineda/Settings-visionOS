//
//  DeletingTextView.swift
//  Preferences
//
//  Template for selecting which audible method to use.
//

import SwiftUI

struct VerbosityAudibleMethodsView: View {
    // Variables
    var title = String()
    let options = ["Speak", "Play Sound", "Change Pitch", "Do Nothing"]
    @State var selected = "Change Pitch"
    
    var body: some View {
        CustomList(title: title) {
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
    VerbosityAudibleMethodsView()
}
