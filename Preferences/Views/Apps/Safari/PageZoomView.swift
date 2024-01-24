//
//  PageZoomView.swift
//  Preferences
//
//  Settings > Apps > Safari > Page Zoom
//

import SwiftUI

struct PageZoomView: View {
    // Variables
    @State private var selectedOption: String? = "100%"

    let options = ["50%", "75%", "100%", "115%", "125%", "150%", "175%", "200%", "250%", "300%"]
    
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
                Text("Page Zoom On All Websites")
            })
        }
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Page Zoom")
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
    PageZoomView()
}
