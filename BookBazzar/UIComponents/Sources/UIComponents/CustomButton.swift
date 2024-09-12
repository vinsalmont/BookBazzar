import DesignSystem
import SwiftUI

public struct CustomButton: View {
    let title: String
    let action: () -> Void

    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    public var body: some View {
        Button(
            action: action,
            label: {
                Text(title)
                    .font(Typography.buttonText)
                    .padding(Spacing.medium)
                    .frame(maxWidth: .infinity)
                    .background(AppColors.primary)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 19))
            }
        )
        .padding(.horizontal, Spacing.horizontal)
    }
}
