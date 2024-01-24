//
//  TVView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > TV
//

import SwiftUI

struct TVView: View {
    // Variables
    @State private var selectedOption = "Allow All"
    let options = ["Don't Allow", "TV-Y", "TV-Y7", "TV-Y7-FV", "TV-G", "TV-PG", "TV-14", "TV-MA", "Allow All"]
    
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
            
            Section {
                Toggle("Show TV Shows in the Cloud", isOn: $showMoviesCloudEnabled)
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
    TVView()
}
