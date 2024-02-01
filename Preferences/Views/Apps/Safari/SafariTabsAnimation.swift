//
//  SafariTabsAnimation.swift
//  Preferences
//
//  Settings > Apps > Safari -> Tabs Section
//

import SwiftUI

struct SafariTabsAnimation: View {
    var animation = false
    @State private var animating = false
    @State private var height = 15.0
    private let timer = Timer.publish(every: 4.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack(alignment: .top) {
            // Safari Window
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 5.0,
                bottomLeading: 0.0,
                bottomTrailing: 0.0,
                topTrailing: 5.0),
                style: .continuous)
            .frame(width: 170, height: 50, alignment: .top)
            .foregroundStyle(.gray)
            .padding(.top, animation ? 20 : 35)
            .opacity(0.5)
            
            // Safari Toolbar
            ZStack {
                if animation {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(width: 165, height: height)
                        .foregroundStyle(.secondary)
                        .onReceive(timer) { _ in
                            if animating {
                                closeTabs()
                            } else {
                                showTabs()
                            }
                        }
                } else {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(width: 165, height: 28)
                        .foregroundStyle(.secondary)
                }
                
            }
            .frame(alignment: .top)
            
            // Toolbar Tabs
            if animation {
                VStack {
                    Spacer()
                        .frame(height: 15)
                    HStack(spacing: 3) {
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 37, height: 8)
                            .opacity(0.3)
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 37, height: 8)
                            .opacity(0.3)
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 37, height: 8)
                            .opacity(0.3)
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 37, height: 8)
                    }
                }
                .frame(height: animating ? nil : 0, alignment: .top)
                .clipped()
            } else {
                VStack {
                    Spacer()
                        .frame(height: 15)
                    HStack(spacing: 3) {
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 37, height: 8)
                            .opacity(0.3)
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 37, height: 8)
                            .opacity(0.3)
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 37, height: 8)
                            .opacity(0.3)
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 37, height: 8)
                    }
                }
                .frame(alignment: .top)
            }
            
            // Toolbar URL bar
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 75, height: 8)
                .padding(.top, 3)
                .foregroundStyle(.black)
                .opacity(0.15)
        }
    }
    
    // Functions
    private func showTabs() {
        withAnimation {
            height += 13
            animating = true
        }
    }
    
    private func closeTabs() {
        withAnimation {
            height -= 13
            animating = false
        }
    }
}

#Preview {
    SafariTabsAnimation()
}
