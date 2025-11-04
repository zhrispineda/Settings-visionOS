//
//  SettingsModel.swift
//  Settings-visionOS
//
//  A model that holds data for navigation on the sidebar.
//

import SwiftUI

struct SettingsItem: Identifiable, Hashable {
    var id: SettingsOptions { type }
    let type: SettingsOptions
    var title: String { type.rawValue }
    let icon: String
    let destination: AnyView
    
    static func == (lhs: SettingsItem, rhs: SettingsItem) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

enum SettingsOptions: String, CaseIterable {
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

@Observable final class SettingsModel {
    var path: [String] = []
    var selection: SettingsItem? = nil
    
    let mainSettings: [SettingsItem]
    let usageSettings: [SettingsItem]
    let inputSettings: [SettingsItem]
    let focusSettings: [SettingsItem]
    let dataSettings: [SettingsItem]
    let deviceSettings: [SettingsItem]
    let accountSettings: [SettingsItem]
    let developerSettings: [SettingsItem]
    
    init() {
        mainSettings = [
            SettingsItem(
                type: .general,
                icon: "com.apple.graphic-icon.gear",
                destination: AnyView(
                    GeneralView()
                )
            ),
            SettingsItem(
                type: .apps,
                icon: "com.apple.RealityLauncher",
                destination: AnyView(
                    AppsView()
                )
            ),
            SettingsItem(
                type: .people,
                icon: "com.apple.MRPreferences.icon.people",
                destination: AnyView(
                    PeopleView()
                )
            ),
            SettingsItem(
                type: .environments,
                icon: "com.apple.MRPreferences.icon.environments",
                destination: AnyView(
                    EnvironmentsView()
                )
            ),
        ]
        
        usageSettings = [
            SettingsItem(
                type: .accessibility,
                icon: "com.apple.graphic-icon.accessibility",
                destination: AnyView(
                    AccessibilityView()
                )
            ),
            SettingsItem(
                type: .appearance,
                icon: "com.apple.graphic-icon.display",
                destination: AnyView(
                    AppearanceView()
                )
            ),
            SettingsItem(
                type: .siriSearch,
                icon: "com.apple.graphic-icon.intelligence",
                destination: AnyView(
                    SiriSearchView()
                )
            ),
            SettingsItem(
                type: .controlCenter,
                icon: "com.apple.graphic-icon.control-center",
                destination: AnyView(
                    ControlCenterView()
                )
            ),
            SettingsItem(
                type: .digitalCrown,
                icon: "com.apple.MRPreferences.icon.digital-crown",
                destination: AnyView(
                    DigitalCrownView()
                )
            ),
            SettingsItem(
                type: .search,
                icon: "com.apple.graphic-icon.search",
                destination: AnyView(
                    EmptyView()
                )
            ),
        ]
        
        inputSettings = [
            SettingsItem(
                type: .eyesHands,
                icon: "com.apple.MRPreferences.icon.input",
                destination: AnyView(
                    EmptyView()
                )
            )
        ]
        
        focusSettings = [
            SettingsItem(
                type: .notifications,
                icon: "com.apple.graphic-icon.notifications",
                destination: AnyView(
                    NotificationsView()
                )
            ),
            SettingsItem(
                type: .focus,
                icon: "com.apple.graphic-icon.focus",
                destination: AnyView(
                    FocusView()
                )
            ),
            SettingsItem(
                type: .screenTime,
                icon: "com.apple.graphic-icon.screen-time",
                destination: AnyView(
                    ScreenTimeView()
                )
            ),
        ]
        
        dataSettings = [
            SettingsItem(
                type: .healthData,
                icon: "com.apple.graphic-icon.health-data",
                destination: AnyView(
                    HealthDataView()
                )
            ),
            SettingsItem(
                type: .privacySecurity,
                icon: "com.apple.graphic-icon.privacy",
                destination: AnyView(
                    PrivacySecurityView()
                )
            )
        ]
        
        deviceSettings = [
            SettingsItem(
                type: .storage,
                icon: "com.apple.graphic-icon.internal-drive",
                destination: AnyView(
                    StorageView()
                )
            ),
        ]
        
        accountSettings = [
            SettingsItem(
                type: .gameCenter,
                icon: "com.apple.GameCenterUI.GameCenterHostingContainer",
                destination: AnyView(
                    GameCenterView()
                )
            ),
            SettingsItem(
                type: .icloud,
                icon: "com.apple.application-icon.icloud",
                destination: AnyView(
                    EmptyView()
                )
            ),
            SettingsItem(
                type: .walletApplePay,
                icon: "com.apple.PassbookUISceneService",
                destination: AnyView(
                    WalletApplePayView()
                )
            ),
        ]
        
        developerSettings = [
            SettingsItem(
                type: .developer,
                icon: "com.apple.graphic-icon.developer-tools",
                destination: AnyView(
                    DeveloperView()
                )
            )
        ]

    }
}

final class RouteRegistry {
    @MainActor static let shared = RouteRegistry()
    private var registry: [String: () -> AnyView] = [:]
    
    func register(_ path: String, builder: @escaping () -> AnyView) {
        registry[path] = builder
    }
    
    func register<V: View>(_ path: String, builder: @escaping () -> V) {
        registry[path] = { AnyView(builder()) }
    }
    
    func view(for path: String) -> AnyView? {
        registry[path]?()
    }
}
