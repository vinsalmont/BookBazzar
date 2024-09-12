import Foundation

public struct Product: Identifiable, Codable, Hashable {
    public let id: Int
    public let title: String
    public let author: String
    public let description: String
    public let price: Double

    public init(
        id: Int,
        title: String,
        author: String,
        description: String,
        price: Double
    ) {
        self.id = id
        self.title = title
        self.author = author
        self.description = description
        self.price = price
    }
}
