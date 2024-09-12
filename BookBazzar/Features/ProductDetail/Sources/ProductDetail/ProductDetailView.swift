import DesignSystem
import Models
import SwiftUI

public struct ProductDetailView: View {
    @EnvironmentObject private var session: UserSession
    public let product: Product
    @State private var isFavorite = false

    public init(product: Product) {
        self.product = product
    }

    public var body: some View {
        ScrollView {
            VStack(spacing: Spacing.large) {
                Image(systemName: "book.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .cornerRadius(16)
                    .padding(.top, Spacing.large)

                VStack(alignment: .leading, spacing: Spacing.medium) {
                    Text(product.title)
                        .font(Typography.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.textPrimary)

                    Text("by \(product.author)")
                        .font(Typography.body)
                        .foregroundColor(AppColors.textSecondary)

                    Divider()

                    Text(product.description)
                        .font(Typography.body)
                        .foregroundColor(AppColors.textPrimary)
                        .lineLimit(nil)
                        .padding(.bottom, Spacing.medium)

                    Text("$\(product.price, specifier: "%.2f")")
                        .font(Typography.title)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.primary)
                }
                .padding(.horizontal, Spacing.large)

                Button(action: {}) {
                    Text("Purchase for $\(product.price, specifier: "%.2f")")
                        .font(Typography.body)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(AppColors.primary)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal, Spacing.large)
            }
            .padding(.bottom, Spacing.large)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    session.addFavorite(product: product)
                }) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(isFavorite ? .red : .gray)
                }
            }
        }
        .navigationTitle("Product Details")
        .navigationBarTitleDisplayMode(.inline)
        .background(AppColors.background.edgesIgnoringSafeArea(.all))
        .onAppear {
            self.isFavorite = session.isFavorite(product: product)
        }
        .onChange(of: session.favorites) { _, _ in
            isFavorite = session.isFavorite(product: product)
        }
    }
}
