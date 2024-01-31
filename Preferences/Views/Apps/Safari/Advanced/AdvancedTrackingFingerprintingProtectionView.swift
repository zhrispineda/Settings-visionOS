//
//  AdvancedTrackingFingerprintingProtectionView.swift
//  Preferences
//
//  Settings > Apps > Safari > Advanced > Advanced Tracking and Fingerprinting Protection
//

import SwiftUI

struct AdvancedTrackingFingerprintingProtectionView: View {
    // Variables
    @State private var selectedOption: String? = "Private Browsing"

    let options = ["Off", "Private Browsing", "All Browsing"]
    
    var body: some View {
        CustomList(title: "Advanced Tracking and Fingerprinting Protection") {
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
    }
}

#Preview {
    AdvancedTrackingFingerprintingProtectionView()
}
