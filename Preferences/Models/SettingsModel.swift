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
    case privacySecurity = "Privacy & Security"
    
    case display = "Display"
    case storage = "Storage"
    
    case passwords = "Passwords"
    case gameCenter = "Game Center"
    case walletApplePay = "Wallet & Apple Pay"
    
    case developer = "Developer"
}

// Main Settings: General, Apps, People, Environment
let mainSettings: [SettingsItem] = [
    SettingsItem(type: .general, title: "General", icon: "gear.circle.fill", color: .gray, destination: AnyView(GeneralView())),
    SettingsItem(type: .apps, title: "Apps", icon: "logo.appstore.circle.fill", color: .blue, destination: AnyView(AppsView())),
    SettingsItem(type: .people, title: "People", icon: "person.2.circle.fill", color: .green, destination: AnyView(PeopleView())),
    SettingsItem(type: .environments, title: "Environments", icon: "Environments_Normal", color: .indigo, destination: AnyView(EnvironmentsView())),
]

// Focus Settings: Notifications, Focus, Screen Time
let focusSettings: [SettingsItem] = [
    SettingsItem(type: .notifications, title: "Notifications", icon: "bell.badge.circle.fill", color: .red, destination: AnyView(NotificationsView())),
    SettingsItem(type: .focus, title: "Focus", icon: "moon.circle.fill", color: .indigo, destination: AnyView(FocusView())),
    SettingsItem(type: .screenTime, title: "Screen Time", icon: "hourglass.circle.fill", color: .indigo, destination: AnyView(ScreenTimeView())),
]

// Usage Settings: Accessibility, Control Center, Siri & Search, Privacy & Security
let usageSettings: [SettingsItem] = [
    SettingsItem(type: .accessibility, title: "Accessibility", icon: "accessibility", color: .blue, destination: AnyView(AccessibilityView())),
    SettingsItem(type: .controlCenter, title: "Control Center", icon: "custom.switch.2.circle.fill", color: .gray, destination: AnyView(ControlCenterView())),
    SettingsItem(type: .siriSearch, title: "Siri & Search", icon: "applesiri", color: .purple, destination: AnyView(SiriSearchView())),
    SettingsItem(type: .privacySecurity, title: "Privacy & Security", icon: "hand.raised.circle.fill", color: .blue, destination: AnyView(PrivacySecurityView())),
]

// Device Settings: Display, Storage
let deviceSettings: [SettingsItem] = [
    SettingsItem(type: .display, title: "Display", icon: "sun.max.circle.fill", color: .blue, destination: AnyView(DisplayView())),
    SettingsItem(type: .storage, title: "Storage", icon: "custom.externaldrive.circle.fill", color: .gray, destination: AnyView(StorageView())),
]

// Account Settings: Passwords, Game Center, Wallet & Apple Pay
let accountSettings: [SettingsItem] = [
    SettingsItem(type: .passwords, title: "Passwords", icon: "custom.key.circle.fill", color: .gray, destination: AnyView(PasswordsView())),
    SettingsItem(type: .gameCenter, title: "Game Center", icon: "applegamecenter", color: .white, destination: AnyView(GameCenterView())),
    SettingsItem(type: .walletApplePay, title: "Wallet & Apple Pay", icon: "applewallet", destination: AnyView(WalletApplePayView())),
]

// Developer Settings
let developerSettings: [SettingsItem] = [
    SettingsItem(type: .developer, title: "Developer", icon: "hammer.circle.fill", color: .gray, destination: AnyView(DeveloperView()))
]

// Combined Settings Array
let combinedSettings = mainSettings + focusSettings + usageSettings + deviceSettings + accountSettings + developerSettings
