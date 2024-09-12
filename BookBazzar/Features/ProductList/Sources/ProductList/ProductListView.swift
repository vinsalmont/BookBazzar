//
//  File.swift
//
//
//  Created by Vinícius Salmont on 11/09/24.
//

import DesignSystem
import Managers
import Models
import Stores
import SwiftUI

public struct ProductListView: View {
    @EnvironmentObject var productStore: ProductStore
    @EnvironmentObject var navigationManager: NavigationManager

    public init() { }

    public var body: some View {
        VStack {
            if productStore.products.isEmpty {
                ProgressView("Loading Products...")
                    .task {
                        await productStore.loadData()
                    }
            } else {
                ScrollView {
                    LazyVStack(spacing: Spacing.medium) {
                        ForEach(productStore.products) { product in
                            Button(action: {
                                navigationManager.showProductDetail(for: product)
                            }) {
                                ProductCardView(product: product)
                                    .padding(.horizontal, Spacing.medium)
                            }
                        }
                    }
                    .padding(.vertical, Spacing.medium)
                }
            }
        }
        .toolbarTitleDisplayMode(.large)
        .navigationTitle("Products")
        .background(AppColors.background.edgesIgnoringSafeArea(.all))
    }
}

struct ProductCardView: View {
    let product: Product

    var body: some View {
        HStack(spacing: Spacing.medium) {
            Image(systemName: "book.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .padding(.horizontal)

            VStack(alignment: .leading, spacing: Spacing.small) {
                Text(product.title)
                    .font(Typography.subtitle)
                    .foregroundColor(AppColors.textPrimary)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)

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
        }
        .padding(.vertical, Spacing.medium)
        .background(AppColors.cardBackground)
        .cornerRadius(12)
    }
}

#Preview {
    NavigationStack {
        ProductListView()
            .environmentObject(ProductStore())
            .environmentObject(NavigationManager())
    }
}
