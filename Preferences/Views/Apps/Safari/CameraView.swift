//
//  CameraView.swift
//  Preferences
//
//  Settings > Apps > Safari > Camera
//

import SwiftUI

struct CameraView: View {
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
                Text("Camera Access On All Websites")
            })
        }
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Camera")
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
    CameraView()
}
