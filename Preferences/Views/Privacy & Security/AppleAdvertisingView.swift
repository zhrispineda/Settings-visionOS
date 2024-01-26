//
//  AppleAdvertisingView.swift
//  Preferences
//
//  Created by Chris on 1/25/24.
//

import SwiftUI

struct AppleAdvertisingView: View {
    var body: some View {
        CustomList(title: "Apple Advertising") {
            Section(content: {}, footer: {
                Text("APPLE-DELIEVERED ADVERTISING\n\nThe Apple advertising platform does not track you. It is designed to protect your privacy and does not follow you across apps and websites owned by other companies. You have control over how much Apple uses your information. [About Apple Advertising & Privacy...](#)")
            })
            
            Section(content: {
                Button("View Ad Targeting Information", action: {}) // TODO: Popover
            }, footer: {
                Text("Ad targeting information is used by Apple to personalize your ad experience.")
            })
            
            Section(content: {}, footer: {
                Text("After Apple News or Stocks asks your permission to receive personalized ads, a setting will appear here reflecting your choice.")
            })
        }
    }
}

#Preview {
    AppleAdvertisingView()
}
