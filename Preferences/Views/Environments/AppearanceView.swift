//
//  AppearanceView.swift
//  Preferences
//
//  Settings > Environments > Appearance
//

import SwiftUI

struct AppearanceView: View {
    // Variables
    @State private var selectedOption: String? = "Light"
    let options = ["Automatic", "Light", "Dark"]
    
    var body: some View {
        CustomList(title: "Appearance") {
            Section(content: {
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
            }, footer: {
                Text("Automatically adjust the Ennvironment appearance based on your time of day, or choose a default. Shared Environments will not be affected.")
            })
        }
    }
}

#Preview {
    AppearanceView()
}
