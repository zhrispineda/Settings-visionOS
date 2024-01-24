//
//  ListRowAccountLabel.swift
//  Preferences
//
//  A template to redirect to an account's authentication page.
//  NOTE: This should NOT make use of any login information,
//  for simulation/opening the page only.
//
//  Parameters:
//  service: String
//

import SwiftUI

struct ListRowAccountLabel: View {
    var service: String = String()
    
    var body: some View {
        Text(service)
            .font(.system(size: 32))
            .foregroundStyle(.blue)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
    }
}

#Preview {
    ListRowAccountLabel()
}
