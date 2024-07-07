//
//  VPNDeviceManagementView.swift
//  Settings-visionOS
//
//  Settings > General > VPN & Device Management
//

import SwiftUI

struct VPNDeviceManagementView: View {
    // Variables
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Color(.clear)
            .onAppear {
                dismiss()
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("VPN & Device Management")
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                        .offset(x: -40)
                }
            }
    }
    
}

#Preview {
    VPNDeviceManagementView()
}
