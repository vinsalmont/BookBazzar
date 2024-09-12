//
//  RegisterView.swift
//
//
//  Created by Vinícius Salmont on 11/09/24.
//

import DesignSystem
import Models
import SwiftUI
import UIComponents

public struct RegisterView: View {
    @Binding public var isRegistering: Bool
    @State private var username = ""
    @State private var password = ""
    @State private var email = ""
    @State private var registrationError = false
    @State private var showPassword = false

    @EnvironmentObject var session: UserSession

    public init(isRegistering: Binding<Bool>) {
        _isRegistering = isRegistering
    }

    public var body: some View {
        VStack {
            Text("Register")
                .font(Typography.largeTitle)
                .foregroundStyle(AppColors.primary)
                .padding(.bottom, Spacing.large)

            VStack(spacing: Spacing.medium) {
                CustomTextField(placeholder: "Email", text: $email)
                CustomTextField(placeholder: "Username", text: $username)

                ZStack {
                    CustomTextField(placeholder: "Password", text: $password, isSecure: showPassword)
                    Button(action: {
                        showPassword.toggle()
                    }) {
                        Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                            .foregroundStyle(AppColors.secondary)
                            .padding(.trailing, Spacing.small)
                    }
                    .padding(.trailing, Spacing.medium)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
            .padding(.horizontal, Spacing.horizontal)

            CustomButton(title: "Register") {
                Task {
                    let success = await session.login(username: username, password: password)
                    if !success { registrationError = true }
                }
            }
            .padding(.top, Spacing.large)

            if registrationError {
                Text("Registration failed.")
                    .foregroundColor(AppColors.error)
                    .font(Typography.caption)
                    .padding(.top, Spacing.small)
            }

            Button(action: {
                isRegistering = false
            }) {
                Text("Already have an account? Login")
                    .font(Typography.body)
                    .foregroundColor(AppColors.primary)
                    .padding(.top, Spacing.medium)
            }
        }
        .padding(Spacing.medium)
        .background(AppColors.background)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 5)
        .padding(.horizontal, Spacing.horizontal)
    }
}

#Preview {
    RegisterView(isRegistering: .constant(true))
        .environmentObject(UserSession())
}
