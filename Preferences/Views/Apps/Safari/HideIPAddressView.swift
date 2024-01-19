//
//  HideIPAddressView.swift
//  Preferences
//
//  Settings > Apps > Safari > Hide IP Address
//

import SwiftUI

struct HideIPAddressView: View {
    // Variables
    @State private var selectedOption: String? = "Off"

    let options = ["From Trackers", "Off"]
    
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
                Text("Your IP address can be used to determine your personal information, like your location. To protect this information, Safari can hide your IP address from known trackers. [Learn more...](#)")
            })
        }
        .padding([.leading, .trailing], 40)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Hide IP Address")
                .font(.title)
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    HideIPAddressView()
}
