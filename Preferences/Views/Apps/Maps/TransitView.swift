//
//  TransitView.swift
//  Preferences
//
//  Settings > Apps > Maps > Transit
//

import SwiftUI

struct TransitView: View {
    // Variables
    @State private var selected = ["Bus", "Subway & Light Rail", "Commuter Rail", "Ferry"]
    let options = ["Bus", "Subway & Light Rail", "Commuter Rail", "Ferry"]
    
    var body: some View {
        CustomList(title: "Transit") {
            Section {
                ForEach(options, id: \.self) { option in
                    Button {
                        if let index = selected.firstIndex(of: option) {
                            selected.remove(at: index)
                        } else {
                            selected.append(option)
                        }
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            if selected.contains(option) {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                    .disabled(selected.contains(option) && selected.count < 2)
                }
            } header: {
                Text("Prefer Trips Using")
            } footer: {
                Text("Prefer these vehicles when planning transit trips.")
            }
        }
    }
}

#Preview {
    NavigationStack {
        TransitView()
    }
}
