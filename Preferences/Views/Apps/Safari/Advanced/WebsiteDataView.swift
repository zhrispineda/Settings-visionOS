//
//  WebsiteDataView.swift
//  Preferences
//
//  Settings > Apps > Safari > Advanced > Website Data
//

import SwiftUI

struct WebsiteDataView: View {
    // Variables
    @State private var searchText = String()
    
    var body: some View {
        List {
            HStack {
                Spacer()
                ProgressView()
                Spacer()
            }
        }
        .searchable(text: $searchText, placement: .toolbar)
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Website Data")
                    .font(.title)
                    .frame(maxWidth: .infinity)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
            })
        }
    }
}

#Preview {
    NavigationStack {
        WebsiteDataView()
    }
}
