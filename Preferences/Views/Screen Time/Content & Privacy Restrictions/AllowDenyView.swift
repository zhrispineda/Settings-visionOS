//
//  AllowDenyView.swift
//  Preferences
//
//  Template for Allow or Deny lists
//

import SwiftUI

struct AllowDenyView: View {
    // Variables
    var title = String()
    @State private var selectedOption = "Allow"
    let options = ["Allow", "Don't Allow"]
    
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
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text(title)
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    AllowDenyView()
}
