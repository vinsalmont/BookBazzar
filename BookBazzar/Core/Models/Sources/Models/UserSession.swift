//
//  UserSession.swift
//
//
//  Created by Vinícius Salmont on 11/09/24.
//

import SwiftUI

public class UserSession: ObservableObject {
    @Published public var isLoggedIn = false
    @Published public var userToken: String?
    @Published public var favorites: [Product] = []

    public init() {}

    public func login(username: String, password: String) async -> Bool {
        if username == "user" && password == "password" {
            DispatchQueue.main.async {
                self.userToken = "mockToken123"
                self.isLoggedIn = true
            }
            return true
        }

        return false
    }

    public func logout() {
        DispatchQueue.main.async {
            self.userToken = nil
            self.isLoggedIn = false
        }
    }
}

// MARK: - Favorites

public extension UserSession {
    func addFavorite(product: Product) {
        if !isFavorite(product: product) {
            DispatchQueue.main.async {
                self.favorites.append(product)
            }
        } else {
            remoteFavorite(product: product)
        }
    }

    private func remoteFavorite(product: Product) {
        DispatchQueue.main.async {
            self.favorites.removeAll(where: { $0.id == product.id })
        }
    }

    func isFavorite(product: Product) -> Bool {
        favorites.contains(where: { $0.id == product.id })
    }
}
