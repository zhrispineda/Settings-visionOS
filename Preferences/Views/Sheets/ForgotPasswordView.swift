//
//  ForgotPasswordView.swift
//  Preferences
//
//  Settings > Apple ID > Forgot Password
//

import SwiftUI

struct ForgotPasswordView: View {
    // Variables
    @State private var username = String()
    @State private var showingFailedAlert = false
    @State private var showingUnlockOptions = false
    @State private var showingEmailSentAlert = false
    @Binding var showingForgotPasswordSheet: Bool
    
    var body: some View {
        NavigationStack {
            if showingUnlockOptions {
                List {
                    HStack {
                        VStack(alignment: .center) {
                            Text("Unlock Options")
                                .font(.extraLargeTitle)
                                .padding(.bottom, 5)
                            Text("Choose how you would like to unlock your account.")
                                .padding(.bottom, 30)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .listRowBackground(Color.clear)
                    
                    Section {
                        Button {
                            showingEmailSentAlert.toggle()
                        } label: {
                            HStack {
                                Text("Unlock By Email")
                                Spacer()
                                if showingEmailSentAlert {
                                    ProgressView()
                                } else {
                                    Image(systemName: "chevron.right")
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                        .alert("Unlock Email Sent",
                               isPresented: $showingEmailSentAlert
                        ) {
                            Button {
                                showingEmailSentAlert.toggle()
                                showingForgotPasswordSheet.toggle()
                            } label: {
                                Text("OK")
                            }
                        } message: {
                            Text("Follow the directions in the email to unlock your account.")
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            showingForgotPasswordSheet.toggle()
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.extraLargeTitle)
                                .foregroundStyle(.white, .white.opacity(0.2))
                                .fontWeight(.thin)
                        }
                        .buttonStyle(.plain)
                    }
                }
            } else {
                ZStack {
                    List {
                        VStack(alignment: .center) {
                            Text("Forgot Password?")
                                .font(.extraLargeTitle)
                                .padding(.bottom, 5)
                            Text("Enter your email address or phone number\nthat you use with your account to continue.")
                                .padding(.bottom, 30)
                            TextField("Email or Phone Number", text: $username)
                                .padding(20)
                                .background(.black).opacity(0.35)
                                .cornerRadius(10)
                                .textFieldStyle(.plain)
                            Spacer()
                                .padding(.vertical, 40)
                        }
                        .padding(.bottom, 100)
                        .listRowBackground(Color.clear)
                    }
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Button {
                                showingForgotPasswordSheet.toggle()
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.extraLargeTitle)
                                    .foregroundStyle(.white, .white.opacity(0.2))
                                    .fontWeight(.thin)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    VStack {
                        Spacer()
                        Button {
                            withAnimation {
                                showingUnlockOptions.toggle()
                            }
                        } label: {
                            Text("Continue")
                                .fontWeight(.bold)
                                .font(.title3)
                                .frame(width: 250, height: 60)
                                .background(username.count < 1 ? .white.opacity(0.1) : .blue)
                                .foregroundStyle(username.count < 1 ? .white.opacity(0.1) : Color.white)
                                .cornerRadius(30)
                                .shadow(color: username.count < 1 ? Color.clear : Color.blue, radius: 10)
                        }
                        .buttonStyle(.plain)
                        .disabled(username.count < 1)
                    }
                    .padding(.bottom, 25)
                }
            }
        }
    }
}

#Preview {
    ForgotPasswordView(showingForgotPasswordSheet: .constant(true))
}
