//
//  SettingsModel.swift
//  Settings-visionOS
//
//  Created by Chris on 1/7/24.
//

import SwiftUI

struct SettingsItem: Identifiable {
    var id: String { title }
    let type: SettingsModel
    let title: String
    let icon: String
    let color: Color
    let destination: AnyView
}

enum SettingsModel: String, CaseIterable {
    case general = "General"
    case apps = "Apps"
    case people = "People"
    case environments = "Environments"
}

let mainSettings: [SettingsItem] = [
    SettingsItem(type: .general, title: "General", icon: "gear.circle.fill", color: .gray, destination: AnyView(GeneralView())),
    SettingsItem(type: .apps, title: "Apps", icon: "logo.appstore.circle.fill", color: .blue, destination: AnyView(AppsView())),
    SettingsItem(type: .people, title: "People", icon: "person.2.circle.fill", color: .green, destination: AnyView(EmptyView())),
    SettingsItem(type: .environments, title: "Environments", icon: "mountain.2.circle.fill", color: .indigo, destination: AnyView(EmptyView())),
]
