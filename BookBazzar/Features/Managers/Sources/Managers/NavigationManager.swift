import Models
import SwiftUI

public class NavigationManager: ObservableObject {
    @Published public var path = NavigationPath()

    public init() { }

    public func showProductDetail(for product: Product) {
        path.append(product)
    }

    public func goBack() {
        path.removeLast()
    }

    public func resetToRoot() {
        path = NavigationPath()
    }
}
