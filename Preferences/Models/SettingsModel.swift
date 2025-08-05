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
    SettingsItem(type: .general, title: "General", icon: "com.apple.graphic-icon.gear", destination: AnyView(GeneralView())),
    SettingsItem(type: .apps, title: "Apps", icon: "com.apple.RealityLauncher", destination: AnyView(AppsView())),
    SettingsItem(type: .people, title: "People", icon: "com.apple.MRPreferences.icon.people", destination: AnyView(PeopleView())),
    SettingsItem(type: .environments, title: "Environments", icon: "com.apple.MRPreferences.icon.environments", destination: AnyView(EnvironmentsView())),
]

// Usage Settings: Accessibility, Appearance, Siri & Search, Control Center, Digital Crown, Search
@MainActor let usageSettings: [SettingsItem] = [
    SettingsItem(type: .accessibility, title: "Accessibility", icon: "com.apple.graphic-icon.accessibility", destination: AnyView(AccessibilityView())),
    SettingsItem(type: .appearance, title: "Appearance", icon: "com.apple.graphic-icon.display", destination: AnyView(AppearanceView())),
    SettingsItem(type: .siriSearch, title: "Apple Intelligence & Siri", icon: "com.apple.graphic-icon.intelligence", destination: AnyView(SiriSearchView())),
    SettingsItem(type: .controlCenter, title: "Control Center", icon: "com.apple.graphic-icon.control-center", destination: AnyView(ControlCenterView())),
    SettingsItem(type: .digitalCrown, title: "Digital Crown", icon: "com.apple.MRPreferences.icon.digital-crown", destination: AnyView(DigitalCrownView())),
    SettingsItem(type: .search, title: "Search", icon: "com.apple.graphic-icon.search", destination: AnyView(EmptyView())),
]

// Input Settings
@MainActor let inputSettings: [SettingsItem] = [
    SettingsItem(type: .eyesHands, title: "Eyes & Hands", icon: "com.apple.MRPreferences.icon.input", destination: AnyView(EmptyView()))
]

// Focus Settings: Notifications, Focus, Screen Time
@MainActor let focusSettings: [SettingsItem] = [
    SettingsItem(type: .notifications, title: "Notifications", icon: "com.apple.graphic-icon.notifications", destination: AnyView(NotificationsView())),
    SettingsItem(type: .focus, title: "Focus", icon: "com.apple.graphic-icon.focus", destination: AnyView(FocusView())),
    SettingsItem(type: .screenTime, title: "Screen Time", icon: "com.apple.graphic-icon.screen-time", destination: AnyView(ScreenTimeView())),
]

// Data Settings: Health Data, Privacy & Security
@MainActor let dataSettings: [SettingsItem] = [
    SettingsItem(type: .healthData, title: "Health Data", icon: "com.apple.graphic-icon.health-data", destination: AnyView(HealthDataView())),
        SettingsItem(type: .privacySecurity, title: "Privacy & Security", icon: "com.apple.graphic-icon.privacy", destination: AnyView(PrivacySecurityView()))
]

// Device Settings: Storage
@MainActor let deviceSettings: [SettingsItem] = [
    SettingsItem(type: .storage, title: "Storage", icon: "com.apple.graphic-icon.internal-drive", destination: AnyView(StorageView())),
]

// Account Settings: Game Center, iCloud, Wallet & Apple Pay
@MainActor let accountSettings: [SettingsItem] = [
    SettingsItem(type: .gameCenter, title: "Game Center", icon: "com.apple.GameCenterUI.GameCenterHostingContainer", destination: AnyView(GameCenterView())),
    SettingsItem(type: .icloud, title: "iCloud", icon: "com.apple.application-icon.icloud", destination: AnyView(EmptyView())),
    SettingsItem(type: .walletApplePay, title: "Wallet & Apple Pay", icon: "com.apple.PassbookUISceneService", destination: AnyView(WalletApplePayView())),
]

// Developer Settings
@MainActor let developerSettings: [SettingsItem] = [
    SettingsItem(type: .developer, title: "Developer", icon: "com.apple.graphic-icon.developer-tools", destination: AnyView(DeveloperView()))
]

// Combined Settings Array
@MainActor let combinedSettings = mainSettings + focusSettings + inputSettings + usageSettings + dataSettings + deviceSettings + accountSettings + developerSettings
