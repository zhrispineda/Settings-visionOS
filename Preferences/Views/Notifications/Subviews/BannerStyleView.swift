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
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Banner Style")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
            })
        }
    }
}

#Preview {
    BannerStyleView()
}
