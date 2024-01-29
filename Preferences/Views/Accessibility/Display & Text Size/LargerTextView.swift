//
//  LargerTextView.swift
//  Preferences
//
//  Settings > Accessibility > Display & Text Size > Larger Text
//

import SwiftUI

struct LargerTextView: View {
    // Variables
    @State private var largerAccessibilitySizes = false
    
    var body: some View {
        VStack {
            List {
                Toggle("Larger Accessibility Sizes", isOn: $largerAccessibilitySizes)
            }
            .frame(height: 200)
            TextSizeView(largerAccessibilitySizes: $largerAccessibilitySizes)
            Spacer()
        }
    }
}

#Preview {
    NavigationStack {
        LargerTextView()
    }
}
