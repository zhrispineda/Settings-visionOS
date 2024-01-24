//
//  RestrictionsAppsView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Apps
//

import SwiftUI

struct RestrictionsAppsView: View {
    // Variables
    @State private var selectedOption = "Allow All"
    let options = ["Don't Allow", "4+", "9+", "12+", "17+", "Allow All"]
    
    @State private var showMoviesCloudEnabled = true
    
    var body: some View {
        List {
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
        .padding([.leading, .trailing], 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                HStack {
                    Text("Movies")
                        .font(.title2)
                }
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    RestrictionsAppsView()
}
