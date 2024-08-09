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
        CustomList(title: "VPN & Device Management") {
            Text(String())
                .listRowBackground(Color.clear)
                .onAppear {
                    dismiss()
                }
        }
    }
    
}

#Preview {
    VPNDeviceManagementView()
}
