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
    case digitalCrown = "Digital Crown"
    case siriSearch = "Apple Intelligence & Siri"
    case search = "Search"
    case healthData = "Health Data"
    case privacySecurity = "Privacy & Security"
    
    case eyesHands = "Eyes & Hands"
    
    case appearance = "Appearance"
    case icloud = "iCloud"
    case storage = "Storage"
    
    case gameCenter = "Game Center"
    case walletApplePay = "Wallet & Apple Pay"
    
    case developer = "Developer"
}

// Main Settings: General, Apps, People, Environment
@MainActor let mainSettings: [SettingsItem] = [
    SettingsItem(type: .general, title: "General", icon: "gear.circle.fill", color: .gray, destination: AnyView(GeneralView())),
    SettingsItem(type: .apps, title: "Apps", icon: "com.apple.AppStore", destination: AnyView(AppsView())),
    SettingsItem(type: .people, title: "People", icon: "person.2.circle.fill", color: .green, destination: AnyView(PeopleView())),
    SettingsItem(type: .environments, title: "Environments", icon: "environments.circle.fill", color: .indigo, destination: AnyView(EnvironmentsView())),
]

// Usage Settings: Accessibility, Appearance, Siri & Search, Control Center, Digital Crown, Search
@MainActor let usageSettings: [SettingsItem] = [
    SettingsItem(type: .accessibility, title: "Accessibility", icon: "accessibility", color: .blue, destination: AnyView(AccessibilityView())),
    SettingsItem(type: .appearance, title: "Appearance", icon: "sun.max.circle.fill", color: .blue, destination: AnyView(AppearanceView())),
    SettingsItem(type: .siriSearch, title: "Apple Intelligence & Siri", icon: "com.apple.graphic-icon.intelligence", destination: AnyView(SiriSearchView())),
    SettingsItem(type: .controlCenter, title: "Control Center", icon: "com.apple.graphic-icon.control-center", destination: AnyView(ControlCenterView())),
    SettingsItem(type: .digitalCrown, title: "Digital Crown", icon: "digitalcrown.horizontal.arrow.counterclockwise.fill", color: .blue, destination: AnyView(DigitalCrownView())),
    SettingsItem(type: .search, title: "Search", icon: "magnifyingglass.circle.fill", color: .gray, destination: AnyView(EmptyView())),
]

// Input Settings
@MainActor let inputSettings: [SettingsItem] = [
    SettingsItem(type: .eyesHands, title: "Eyes & Hands", icon: "hand.point.up.left.fill", color: .blue, destination: AnyView(EmptyView()))
]

// Focus Settings: Notifications, Focus, Screen Time
@MainActor let focusSettings: [SettingsItem] = [
    SettingsItem(type: .notifications, title: "Notifications", icon: "bell.badge.circle.fill", color: .red, destination: AnyView(NotificationsView())),
    SettingsItem(type: .focus, title: "Focus", icon: "moon.circle.fill", color: .indigo, destination: AnyView(FocusView())),
    SettingsItem(type: .screenTime, title: "Screen Time", icon: "hourglass.circle.fill", color: .indigo, destination: AnyView(ScreenTimeView())),
]

// Data Settings: Health Data, Privacy & Security
@MainActor let dataSettings: [SettingsItem] = [
    SettingsItem(type: .healthData, title: "Health Data", icon: "com.apple.graphic-icon.health-data", destination: AnyView(HealthDataView())),
        SettingsItem(type: .privacySecurity, title: "Privacy & Security", icon: "hand.raised.circle.fill", color: .blue, destination: AnyView(PrivacySecurityView()))
]

// Device Settings: Storage
@MainActor let deviceSettings: [SettingsItem] = [
    SettingsItem(type: .storage, title: "Storage", icon: "com.apple.graphic-icon.internal-drive", destination: AnyView(StorageView())),
]

// Account Settings: Game Center, iCloud, Wallet & Apple Pay
@MainActor let accountSettings: [SettingsItem] = [
    SettingsItem(type: .gameCenter, title: "Game Center", icon: "applegamecenter", color: .white, destination: AnyView(GameCenterView())),
    SettingsItem(type: .icloud, title: "iCloud", icon: "appleicloud", color: .white, destination: AnyView(EmptyView())),
    SettingsItem(type: .walletApplePay, title: "Wallet & Apple Pay", icon: "applewallet", destination: AnyView(WalletApplePayView())),
]

// Developer Settings
@MainActor let developerSettings: [SettingsItem] = [
    SettingsItem(type: .developer, title: "Developer", icon: "hammer.circle.fill", color: .gray, destination: AnyView(DeveloperView()))
]

// Combined Settings Array
@MainActor let combinedSettings = mainSettings + focusSettings + inputSettings + usageSettings + dataSettings + deviceSettings + accountSettings + developerSettings
