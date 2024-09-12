import DesignSystem
import Models
import Stores
import SwiftUI

public struct FavoritesView: View {
    @EnvironmentObject private var session: UserSession
    @EnvironmentObject private var productStore: ProductStore

    public init() { }

    public var body: some View {
        ScrollView {
            if session.favorites.isEmpty {
                HStack {
                    Spacer()

                    VStack {
                        Spacer()
                        Image(systemName: "heart.slash")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.gray)

                        Text("No favorites yet")
                            .font(Typography.title)
                            .foregroundColor(AppColors.textSecondary)
                            .padding(.top, Spacing.medium)
                        Spacer()
                    }

                    Spacer()
                }
                .padding(.top, Spacing.large)
            } else {
                LazyVStack(spacing: Spacing.large) {
                    ForEach(session.favorites) { product in
                        FavoriteProductCardView(product: product)
                    }
                }
                .padding(.horizontal, Spacing.large)
            }
        }
        .navigationTitle("Favorites")
        .background(AppColors.background.edgesIgnoringSafeArea(.all))
    }
}

struct FavoriteProductCardView: View {
    let product: Product
    @EnvironmentObject private var session: UserSession

    var body: some View {
        HStack(spacing: Spacing.medium) {
            Image(systemName: "book.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(AppColors.primary, lineWidth: 2)
                )

            VStack(alignment: .leading, spacing: Spacing.small) {
                Text(product.title)
                    .font(Typography.title)
                    .foregroundColor(AppColors.textPrimary)
                    .lineLimit(2)

                Text("by \(product.author)")
                    .font(Typography.body)
                    .foregroundColor(AppColors.textSecondary)
                    .lineLimit(1)

                Text("$\(product.price, specifier: "%.2f")")
                    .font(Typography.body)
                    .fontWeight(.bold)
                    .foregroundColor(AppColors.primary)
            }

            Spacer()

            Button(action: {
                session.addFavorite(product: product)
            }) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .padding(Spacing.medium)
        .background(AppColors.cardBackground)
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}
