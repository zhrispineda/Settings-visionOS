//
//  TVAppView.swift
//  Settings-visionOS
//
//  Settings > Developer > TV App
//

import SwiftUI

struct TVAppView: View {
    var body: some View {
        List {
            HStack {
                Spacer()
                Text("No developer user accounts added. User accounts written by developer\napps will be listed here.")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .listRowBackground(Color.clear)
        }
        .navigationTitle("TV App")
    }
}

#Preview {
    TVAppView()
}
