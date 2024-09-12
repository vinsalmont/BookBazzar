//
//  CustomTextField.swift
//
//
//  Created by Vinícius Salmont on 11/09/24.
//

import DesignSystem
import SwiftUI

public struct CustomTextField: View {
    public let placeholder: String
    @Binding public var text: String
    public var isSecure = false

    public init(
        placeholder: String,
        text: Binding<String>,
        isSecure: Bool = false
    ) {
        self.placeholder = placeholder
        _text = text
        self.isSecure = isSecure
    }

    public var body: some View {
        if isSecure {
            SecureField(placeholder, text: $text)
                .font(Typography.inputText)
                .textInputAutocapitalization(.never)
                .padding(Spacing.medium)
                .background(AppColors.cardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(AppColors.secondary, lineWidth: 1)
                )
                .shadow(radius: 3)
        } else {
            TextField(placeholder, text: $text)
                .font(Typography.inputText)
                .textInputAutocapitalization(.never)
                .padding(Spacing.medium)
                .background(AppColors.cardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(AppColors.secondary, lineWidth: 1)
                )
                .shadow(radius: 3)
        }
    }
}

#Preview {
    CustomTextField(placeholder: "", text: .constant(""), isSecure: false)
}
