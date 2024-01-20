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
                Text("Advanced Tracking and Fingerprinting Protection")
                .font(.title)
                .frame(maxWidth: .infinity)
                .offset(x: -40)
            })
        }
    }
}

#Preview {
    AdvancedTrackingFingerprintingProtectionView()
}
