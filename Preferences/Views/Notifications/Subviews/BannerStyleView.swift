//
//  BannerStyleView.swift
//  Preferences
//
//  Settings > Notifications > [App] > Banner Style
//

import SwiftUI

struct BannerStyleView: View {
    // Variables
    @State private var selectedOption: String? = "Temporary"
    let options = ["Temporary", "Persistent"]
    
    var body: some View {
        CustomList(title: "Banner Style") {
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
    BannerStyleView()
}
