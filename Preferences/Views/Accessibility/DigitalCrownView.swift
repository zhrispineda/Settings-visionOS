//
//  DigitalCrownView.swift
//  Preferences
//
//  Settings > Accessibility > Digital Crown
//

import SwiftUI

struct DigitalCrownView: View {
    // Variables
    @State private var selectedOption = "Default"
    let options = ["Default", "Slow", "Slowest"]
    
    var body: some View {
        CustomList(title: "Digital Crown") {
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
                Text("Click Speed")
            }, footer: {
                Text("Adjust the speed required to double or triple-press the Digital Crown.")
            })
        }
    }
}

#Preview {
    DigitalCrownView()
}
