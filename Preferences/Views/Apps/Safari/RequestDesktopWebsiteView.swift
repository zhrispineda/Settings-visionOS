//
//  RequestDesktopWebsiteView.swift
//  Preferences
//
//  Settings > Apps > Safari > Request Desktop Website
//

import SwiftUI

struct RequestDesktopWebsiteView: View {
    // Variables
    @State private var allWebsitesEnabled = true
    
    var body: some View {
        List {
            Section {
                Toggle("All Websites", isOn: $allWebsitesEnabled)
            } header: {
                Text("Request Desktop Website On")
            }
        }
        .padding(.horizontal, 45)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Request Desktop Website")
                    .font(.title)
                    .frame(maxWidth: .infinity)
            }
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
                    .disabled(true)
            }
        }
    }
}

#Preview {
    NavigationStack {
        RequestDesktopWebsiteView()
    }
}
