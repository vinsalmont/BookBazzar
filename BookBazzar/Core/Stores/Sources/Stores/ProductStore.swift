import Models
import Services
import SwiftUI

public class ProductStore: ObservableObject {
    @Published public var products: [Product] = []
    private let networkService = ProductService()

    public init() { }

    public func loadData() async {
        do {
            let fetchedProducts = try await networkService.fetchProducts()

            DispatchQueue.main.async {
                self.products = fetchedProducts
            }

        } catch {
            debugPrint("Error loading products: \(error.localizedDescription)")
        }
    }

}
