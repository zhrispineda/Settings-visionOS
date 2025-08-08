//
//  SignInView.swift
//  Preferences
//
//  Settings > Sign in
//

import SwiftUI

struct SignInView: View {
    // Variables
    @Environment(\.dismiss) private var dismiss
    @State private var username = String()
    @State private var showingFailedAlert = false
    @State private var showingForgotPasswordSheet = false
    @State private var signingIn = false
    @State private var showingSignInFailedAlert = false
    
    var body: some View {
        NavigationStack {
            List {
                VStack(alignment: .center) {
                    if let image = UIImage.asset(path: "/System/Library/PrivateFrameworks/AppleAccountUI.framework", name: "sign-in-header-dark") {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                    }
                    Text("Apple Account")
                        .font(.extraLargeTitle2)
                    TextField("Email or Phone Number", text: $username)
                        .padding(20)
                        .background(.black).opacity(0.35)
                        .cornerRadius(10)
                        .textFieldStyle(.plain)
                    HStack {
                        Button {
                            showingForgotPasswordSheet.toggle()
                        } label: {
                            Text("Forgot Password")
                                .font(.subheadline)
                        }
                        .buttonStyle(.plain)
                        .sheet(isPresented: $showingForgotPasswordSheet) {
                            ForgotPasswordView(showingForgotPasswordSheet: $showingForgotPasswordSheet)
                                .frame(width: 650, height: 720)
                        }
                        Text("\u{2022}")
                            .padding(.horizontal, 10)
                        Button {
                            showingFailedAlert.toggle()
                        } label: {
                            Text("Create New Apple Account")
                                .font(.subheadline)
                        }
                        .buttonStyle(.plain)
                        .alert("Could Not Create Apple Account",
                               isPresented: $showingFailedAlert
                        ) {
                            Button {
                                if let url = URL(string: "https://support.apple.com/en-us/101661") {
                                    UIApplication.shared.open(url)
                                }
                            } label: {
                                Text("Learn More")
                            }
                            Button("OK") {}
                        } message: {
                            Text("This iPhoneSimulator has been used to create too many new Apple Accounts. Contact Apple Support to request another Apple Account to use with this iPhoneSimulator.")
                        }
                    }
                    Spacer()
                        .padding(.vertical, 35)
                    Image(_internalSystemName: "privacy.handshake")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    VStack {
                        Text("Your Apple ID information is used to enable Apple services when you sign\nin, including iCloud Backup, which automatically backs up the data on\nyour device in case you need to replace or restore it. Your device serial\nnumber may be used to check eligibility for service offers.")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .multilineTextAlignment(.center)
                            .font(.caption2)
                            .foregroundStyle(.gray)
                        Text("See how your data is managed...")
                            .foregroundColor(.blue)
                            .font(.caption2)
                            .padding(.bottom, 3)
                    }
                    Button {
                        signingIn.toggle()
                    } label: {
                        if signingIn {
                            ProgressView()
                                .frame(width: 275, height: 60)
                                .background(.white.opacity(0.1))
                                .foregroundStyle(.white.opacity(0.1))
                                .cornerRadius(30)
                                .onAppear {
                                    Task { @MainActor in
                                        try await Task.sleep(for: .seconds(5))
                                        showingSignInFailedAlert.toggle()
                                        signingIn = false
                                    }
                                }
                        } else {
                            Text("Continue")
                                .fontWeight(.bold)
                                .font(.title3)
                                .frame(width: 275, height: 60)
                                .background(username.count < 1 ? .white.opacity(0.1) : .white.opacity(0.2))
                                .foregroundStyle(username.count < 1 ? .white.opacity(0.1) : Color.white)
                                .cornerRadius(30)
                        }
                    }
                    .buttonStyle(.plain)
                    .disabled(username.count < 1 || signingIn)
                    .alert("Verification Failed", isPresented: $showingSignInFailedAlert) {
                        Button("OK") {}
                    } message: {
                        Text("There was an error connecting to the Apple ID server.")
                    }
                }
                .padding(.bottom, 100)
                .padding(.horizontal, 45)
                .listRowBackground(Color.clear)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.extraLargeTitle)
                            .foregroundStyle(.white, .white.opacity(0.2))
                            .fontWeight(.thin)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

#Preview {
    SignInView()
}
