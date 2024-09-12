import DesignSystem
import Models
import SwiftUI
import UIComponents

public struct LoginView: View {
    @EnvironmentObject var session: UserSession
    @State private var username = ""
    @State private var password = ""
    @State private var loginError = false
    @State private var isRegistering = false
    @State private var showPassword = false

    public init() { }

    public var body: some View {
        VStack {
            Image(systemName: "book.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundStyle(AppColors.primary)

            Text("BookBazzar")
                .font(Typography.largeTitle)
                .foregroundStyle(AppColors.primary)
                .padding(.bottom, Spacing.large)

            VStack(spacing: Spacing.medium) {
                CustomTextField(placeholder: "Username", text: $username)

                ZStack {
                    CustomTextField(placeholder: "Password", text: $password, isSecure: !showPassword)
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

            CustomButton(title: "Login") {
                Task {
                    let success = await session.login(username: username, password: password)

                    if !success { loginError = true }
                }
            }
            .padding(.top, Spacing.large)

            if loginError {
                Text("Invalid credentials")
                    .foregroundColor(AppColors.error)
                    .font(Typography.caption)
                    .padding(.top, Spacing.small)
            }

            Button(action: {
                isRegistering.toggle()
            }) {
                Text("Don't have an account? Register")
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
        .fullScreenCover(isPresented: $isRegistering) {
            RegisterView(isRegistering: $isRegistering)
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(UserSession())
}
