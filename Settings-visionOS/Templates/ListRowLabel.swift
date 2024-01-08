//
//  ListRowLabel.swift
//  Settings-visionOS
//
//  Created by Chris on 1/8/24.
//

import SwiftUI

struct ListRowLabel: View {
    var title: String = "Title"
    var subtitle: String = "Subtitle"
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(subtitle)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    ListRowLabel()
}
