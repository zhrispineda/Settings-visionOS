//
//  SortOrderView.swift
//  Preferences
//
//  Settings > People > Sort Order
//

import SwiftUI

struct SortOrderView: View {
    // Variables
    @State private var selectedOption: String? = "Last, First"
    let options = ["First, Last", "Last, First"]
    
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
                    Text("Sort Order")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            })
        }
    }
}

#Preview {
    SortOrderView()
}
