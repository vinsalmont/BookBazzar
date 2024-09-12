//
//  File.swift
//
//
//  Created by Vinícius Salmont on 11/09/24.
//

import DesignSystem
import Models
import SwiftUI

public struct SettingsView: View {
    @State private var notificationsEnabled = true
    @State private var darkModeEnabled = false
    @EnvironmentObject private var session: UserSession

    public init() { }

    public var body: some View {
        Form {
            Section(header: Text("Profile").font(Typography.heading)) {
                HStack {
                    Image(systemName: "person.crop.circle")
                        .foregroundColor(AppColors.primary)
                    Text("Account Information")
                        .font(Typography.body)
                    Spacer()
//                    NavigationLink(destination: AccountInfoView()) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(AppColors.textSecondary)
//                    }
                }
            }

            Section(header: Text("App Preferences").font(Typography.heading)) {
                Toggle("Enable Notifications", isOn: $notificationsEnabled)
                    .font(Typography.body)

                Toggle("Dark Mode", isOn: $darkModeEnabled)
                    .font(Typography.body)
            }

            Section(header: Text("About").font(Typography.heading)) {
                HStack {
                    Text("Version")
                        .font(Typography.body)
                    Spacer()
                    Text("1.0.0")
                        .font(Typography.body)
                        .foregroundColor(AppColors.textSecondary)
                }
            }

            Section {
                Button(action: {
                    session.logout()
                }) {
                    HStack {
                        Image(systemName: "arrow.right.square")
                            .foregroundColor(AppColors.error)
                        Text("Sign Out")
                            .font(Typography.body)
                            .foregroundColor(AppColors.error)
                    }
                }
            }
        }
        .background(AppColors.background)
        .navigationTitle("Settings")
        .font(Typography.body)
    }
}
