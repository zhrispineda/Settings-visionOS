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
    @State var selectedOption = "On"
    var options = ["Off", "On"]
    
    var body: some View {
        CustomList(title: title) {
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
    OnOffView()
}
