//
//  MoviesView.swift
//  Preferences
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Movies
//

import SwiftUI

struct MoviesView: View {
    // Variables
    @State private var selectedOption = "Allow All"
    let options = ["Don't Allow", "NR", "G", "PG", "PG-13", "R", "NC-17", "Unrated", "Allow All"]
    
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
                Toggle("Show Movies in the Cloud", isOn: $showMoviesCloudEnabled)
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
    MoviesView()
}
