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
            ToolbarItem(placement: .principal) {
                Text("Website Data")
                    .font(.title)
                    .frame(maxWidth: .infinity)
            }
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
            }
        }
    }
}

#Preview {
    NavigationStack {
        WebsiteDataView()
    }
}
