//
//  RemoteDevicesView.swift
//  Preferences
//
//  Settings > General > Remote Devices
//

import SwiftUI

struct RemoteDevicesView: View {
    var body: some View {
        CustomList(title: "Remote Devices") {}
    }
}

#Preview {
    NavigationStack {
        RemoteDevicesView()
    }
}
