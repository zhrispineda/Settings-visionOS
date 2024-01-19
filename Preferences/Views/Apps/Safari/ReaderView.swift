//
//  ReaderView.swift
//  Preferences
//
//  Settings > Apps > Safari > Reader
//

import SwiftUI

struct ReaderView: View {
    // Variables
    @State private var allWebsitesEnabled = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("All Websites", isOn: $allWebsitesEnabled)
            }, header: {
                Text("Automatically Use Reader On")
            })
        }
        .padding([.leading, .trailing], 40)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Reader")
                .font(.title)
                .frame(maxWidth: .infinity)
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                EditButton()
                    .disabled(true)
            })
        }
    }
}

#Preview {
    ReaderView()
}
