//
//  VPNDeviceManagementView.swift
//  Settings-visionOS
//
//  Created by Chris on 1/8/24.
//

import SwiftUI

struct VPNDeviceManagementView: View {
    var body: some View {
        Text("")
            .navigationTitle("VPN & Device Management")
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Text("VPN & Device Management")
                            .font(.title)
                    }
                    .frame(maxWidth: .infinity)
                    .offset(x: -40)
                })
            }
    }
}

#Preview {
    VPNDeviceManagementView()
}
