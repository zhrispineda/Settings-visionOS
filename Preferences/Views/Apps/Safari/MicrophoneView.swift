//
//  MicrophoneView.swift
//  Preferences
//
//  Settings > Apps > Safari > Microphone
//

import SwiftUI

struct MicrophoneView: View {
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
                Text("Microphone Access On All Websites")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Microphone")
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
    MicrophoneView()
}
