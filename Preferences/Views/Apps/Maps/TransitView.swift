//
//  TransitView.swift
//  Preferences
//
//  Settings > Apps > Maps > Transit
//

import SwiftUI

struct TransitView: View {
    // Variables
    @State private var selectedOptions: [String] = ["Bus", "Subway & Light Rail", "Commuter Rail", "Ferry"]
    let options = ["Bus", "Subway & Light Rail", "Commuter Rail", "Ferry"]
    
    var body: some View {
        CustomList(title: "Transit") {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        if let index = selectedOptions.firstIndex(of: option) {
                            selectedOptions.remove(at: index)
                        } else {
                            selectedOptions.append(option)
                        }
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selectedOptions.contains(option) {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                    .disabled(selectedOptions.contains(option) && selectedOptions.count < 2)
                }
            }, header: {
                Text("Prefer Trips Using")
            }, footer: {
                Text("Prefer these vehicles when planning transit trips.")
            })
        }
    }
}

#Preview {
    TransitView()
}
