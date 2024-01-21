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
        List {
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
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Appearance")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    AppearanceView()
}
