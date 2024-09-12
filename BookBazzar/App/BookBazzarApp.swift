//
//  BookBazzarApp.swift
//  BookBazzar
//
//  Created by Vinícius Salmont on 11/09/24.
//

import Authentication
import Favorites
import Managers
import Models
import ProductDetail
import ProductList
import Settings
import Stores
import SwiftUI

@main
struct BookBazzarApp: App {
    @StateObject private var session = UserSession()
    @StateObject private var productStore = ProductStore()
    @StateObject private var navigationManager = NavigationManager()

    var body: some Scene {
        WindowGroup {
            Group {
                if session.isLoggedIn {
                    TabView {
                        NavigationStack(path: $navigationManager.path) {
                            ProductListView()
                                .navigationTitle("Products")
                                .navigationDestination(for: Product.self) { product in
                                    ProductDetailView(product: product)
                                }
                        }
                        .tabItem {
                            Label("Products", systemImage: "book")
                        }

                        NavigationStack {
                            FavoritesView()
                        }
                        .tabItem {
                            Label("Favorites", systemImage: "heart")
                        }
                        NavigationStack {
                            SettingsView()
                        }
                        .tabItem {
                            Label("Settings", systemImage: "gear")
                        }
                    }
                    .environmentObject(session)

                } else {
                    LoginView()
                }
            }
            .environmentObject(session)
            .environmentObject(productStore)
            .environmentObject(navigationManager)
        }
    }
}
