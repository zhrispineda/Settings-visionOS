//
//  OnOffView.swift
//  Preferences
//
//  Template for On Off list views.
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Music Videos
//
//  Settings > Screen Time > Content & Privacy Restrictions > Content Restrictions > Music Profiles
//

import SwiftUI

struct OnOffView: View {
    // Variables
    var title = String()
    @State var selectedOption = "On"
    var options = ["Off", "On"]
    
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
    OnOffView()
}
