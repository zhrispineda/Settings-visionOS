//
//  LocationView.swift
//  Preferences
//
//  Settings > Apps > Safari > Location
//

import SwiftUI

struct LocationView: View {
    // Variables
    @State private var selectedOption: String? = "Ask"

    let options = ["Ask", "Deny", "Allow"]
    
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
            }, header: {
                Text("Location Access On All Websites")
            })
        }
        .padding([.leading, .trailing], 40)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Location")
                .font(.title)
                .frame(maxWidth: .infinity)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
                    .disabled(true)
            })
        }
    }
}

#Preview {
    LocationView()
}
