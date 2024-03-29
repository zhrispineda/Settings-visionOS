//
//  DisplayOrderView.swift
//  Preferences
//
//  Settings > People > Display Order
//

import SwiftUI

struct DisplayOrderView: View {
    // Variables
    @State private var selectedOption: String? = "First, Last"
    let options = ["First, Last", "Last, First"]
    
    var body: some View {
        CustomList(title: "Display Order") {
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
                Text("Names in some languages such as Chinese, Japanese, and Korean follow a fixed order and will not be affected.")
            })
        }
    }
}

#Preview {
    DisplayOrderView()
}
