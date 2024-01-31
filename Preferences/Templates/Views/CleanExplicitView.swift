//
//  CleanExplicitView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Music, Podcasts, News, Fitness
//
// Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Books
//
//  Parameters:
//  title: String
//

import SwiftUI

struct CleanExplicitView: View {
    // Variables
    var title = String()
    @State private var selectedOption = "Explicit"
    let options = ["Clean", "Explicit"]
    
    var body: some View {
        CustomList(title: title) {
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
        }
    }
}

#Preview {
    CleanExplicitView()
}
