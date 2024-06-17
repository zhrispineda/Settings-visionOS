//
//  SettingsModel.swift
//  Settings-visionOS
//
//  A model that holds data for navigation on the sidebar.
//

import SwiftUI

struct SettingsItem<Content: View>: Identifiable {
    var id: String { title }
    let type: SettingsModel
    let title: String
    let icon: String
    var color: Color = Color(.gray)
    let destination: Content
}

enum SettingsModel: String, CaseIterable {
    case general = "General"
    case apps = "Apps"
    case people = "People"
    case environments = "Environments"
    
    case notifications = "Notifications"
    case focus = "Focus"
    case screenTime = "Screen Time"
    
    case accessibility = "Accessibility"
    case controlCenter = "Control Center"
    case siriSearch = "Siri & Search"
    case healthData = "Health Data"
    case privacySecurity = "Privacy & Security"
    
    case appearance = "Appearance"
    case storage = "Storage"
    
    case gameCenter = "Game Center"
    case walletApplePay = "Wallet & Apple Pay"
    
    case developer = "Developer"
}

// Main Settings: General, Apps, People, Environment
@MainActor let mainSettings: [SettingsItem] = [
    SettingsItem(type: .general, title: "General", icon: "gear.circle.fill", color: .gray, destination: AnyView(GeneralView())),
    SettingsItem(type: .apps, title: "Apps", icon: "logo.appstore.circle.fill", color: .blue, destination: AnyView(AppsView())),
    SettingsItem(type: .people, title: "People", icon: "person.2.circle.fill", color: .green, destination: AnyView(PeopleView())),
    SettingsItem(type: .environments, title: "Environments", icon: "environments.fill", color: .indigo, destination: AnyView(EnvironmentsView())),
]

// Focus Settings: Notifications, Focus, Screen Time
@MainActor let focusSettings: [SettingsItem] = [
    SettingsItem(type: .notifications, title: "Notifications", icon: "bell.badge.circle.fill", color: .red, destination: AnyView(NotificationsView())),
    SettingsItem(type: .focus, title: "Focus", icon: "moon.circle.fill", color: .indigo, destination: AnyView(FocusView())),
    SettingsItem(type: .screenTime, title: "Screen Time", icon: "hourglass.circle.fill", color: .indigo, destination: AnyView(ScreenTimeView())),
]

// Usage Settings: Accessibility, Control Center, Siri & Search, Privacy & Security
@MainActor let usageSettings: [SettingsItem] = [
    SettingsItem(type: .accessibility, title: "Accessibility", icon: "accessibility", color: .blue, destination: AnyView(AccessibilityView())),
    SettingsItem(type: .controlCenter, title: "Control Center", icon: "custom.switch.2.circle.fill", color: .gray, destination: AnyView(ControlCenterView())),
    SettingsItem(type: .siriSearch, title: "Siri & Search", icon: "applesiri", color: .purple, destination: AnyView(SiriSearchView())),
    SettingsItem(type: .healthData, title: "Health Data", icon: "health.3.stack.3d.fill", color: .blue, destination: AnyView(SiriSearchView())),
    SettingsItem(type: .privacySecurity, title: "Privacy & Security", icon: "hand.raised.circle.fill", color: .blue, destination: AnyView(PrivacySecurityView())),
]

// Device Settings: Appearance, Storage
@MainActor let deviceSettings: [SettingsItem] = [
    SettingsItem(type: .appearance, title: "Appearance", icon: "sun.max.circle.fill", color: .blue, destination: AnyView(EnvironmentAppearanceView())),
    SettingsItem(type: .storage, title: "Storage", icon: "custom.externaldrive.circle.fill", color: .gray, destination: AnyView(StorageView())),
]

// Account Settings: Game Center, Wallet & Apple Pay
@MainActor let accountSettings: [SettingsItem] = [
    SettingsItem(type: .gameCenter, title: "Game Center", icon: "applegamecenter", color: .white, destination: AnyView(GameCenterView())),
    SettingsItem(type: .walletApplePay, title: "Wallet & Apple Pay", icon: "applewallet", destination: AnyView(WalletApplePayView())),
]

// Developer Settings
@MainActor let developerSettings: [SettingsItem] = [
    SettingsItem(type: .developer, title: "Developer", icon: "hammer.circle.fill", color: .gray, destination: AnyView(DeveloperView()))
]

// Combined Settings Array
@MainActor let combinedSettings = mainSettings + focusSettings + usageSettings + deviceSettings + accountSettings + developerSettings
