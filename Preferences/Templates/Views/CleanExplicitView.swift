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
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text(title)
                        .font(.title2)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    CleanExplicitView()
}
