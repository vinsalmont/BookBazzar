//
//  File.swift
//
//
//  Created by Vinícius Salmont on 11/09/24.
//

import Foundation
import Models

public class ProductService {

    public init() { }

    public func fetchProducts() async throws -> [Product] {
        return [
            Product(id: 1, title: "SwiftUI for Beginners", author: "John Doe", description: "An introductory book to SwiftUI development.", price: 19.99),
            Product(id: 2, title: "Advanced SwiftUI", author: "Jane Smith", description: "Master advanced topics in SwiftUI.", price: 29.99),
            Product(id: 3, title: "Swift Concurrency in Practice", author: "Michael Johnson", description: "Explore Swift concurrency with real-world examples.", price: 24.99),
            Product(id: 4, title: "Mastering Combine", author: "Lisa Thompson", description: "A complete guide to reactive programming with Combine.", price: 34.99),
            Product(id: 5, title: "iOS Animations", author: "Emma Brown", description: "Bring your apps to life with smooth animations in iOS.", price: 21.99),
            Product(id: 6, title: "Core Data Essentials", author: "James Green", description: "Learn to manage persistence with Core Data.", price: 18.99),
            Product(id: 7, title: "Networking with URLSession", author: "Sophia Williams", description: "Master networking in Swift using URLSession.", price: 22.99),
            Product(id: 8, title: "ARKit 101", author: "Mason Taylor", description: "Dive into augmented reality development with ARKit.", price: 39.99),
            Product(id: 9, title: "Auto Layout Fundamentals", author: "Olivia Anderson", description: "Learn Auto Layout and create responsive UI designs.", price: 17.99),
            Product(id: 10, title: "Design Patterns in Swift", author: "William Harris", description: "Discover essential design patterns for Swift development.", price: 27.99),
            Product(id: 11, title: "Swift Algorithms", author: "Ava Clark", description: "Explore algorithms and data structures in Swift.", price: 24.99),
            Product(id: 12, title: "Machine Learning with Core ML", author: "Ethan Martinez", description: "Implement machine learning models with Core ML.", price: 34.99),
            Product(id: 13, title: "Swift Playgrounds", author: "Mia Perez", description: "A fun and interactive way to learn Swift with Playgrounds.", price: 16.99),
            Product(id: 14, title: "iOS 16: What's New", author: "Isabella Wilson", description: "Learn the new features and APIs introduced in iOS 16.", price: 14.99),
            Product(id: 15, title: "Test-Driven Development in Swift", author: "Elijah Adams", description: "Build better apps by writing tests first.", price: 26.99),
            Product(id: 16, title: "Unit Testing with XCTest", author: "Charlotte Robinson", description: "Learn how to write unit tests in Swift using XCTest.", price: 15.99),
            Product(id: 17, title: "App Architecture Patterns", author: "Amelia Lewis", description: "Explore various app architectures like MVVM and VIPER.", price: 30.99),
            Product(id: 18, title: "Intro to Metal", author: "Lucas Young", description: "Discover Apple's low-level graphics API, Metal.", price: 35.99),
            Product(id: 19, title: "SpriteKit for Game Development", author: "Jack King", description: "Create 2D games using SpriteKit in Swift.", price: 32.99),
            Product(id: 20, title: "SceneKit for 3D Games", author: "Henry Wright", description: "Build 3D games and experiences with SceneKit.", price: 37.99),
            Product(id: 21, title: "Combine Framework Guide", author: "Grace Hall", description: "A comprehensive guide to Apple's Combine framework.", price: 23.99),
            Product(id: 22, title: "Concurrency in Swift", author: "Benjamin Allen", description: "Concurrency made easy with Swift's new async/await features.", price: 25.99),
            Product(id: 23, title: "Functional Programming in Swift", author: "Scarlett Hill", description: "Learn functional programming concepts with Swift.", price: 28.99),
            Product(id: 24, title: "Xcode Tips and Tricks", author: "Leo Scott", description: "Boost your productivity with Xcode tips and tricks.", price: 19.99),
            Product(id: 25, title: "SwiftUI Animations", author: "Harper Green", description: "Create beautiful animations in SwiftUI.", price: 24.99),
            Product(id: 26, title: "Augmented Reality with RealityKit", author: "Sebastian Carter", description: "Explore RealityKit for immersive AR experiences.", price: 33.99),
            Product(id: 27, title: "Using Swift Package Manager", author: "Emily Nelson", description: "Manage dependencies with Swift Package Manager.", price: 18.99),
            Product(id: 28, title: "iPadOS Development", author: "Samuel Lewis", description: "Learn how to build apps for iPadOS.", price: 29.99),
            Product(id: 29, title: "Custom Views with UIView", author: "Evelyn Rivera", description: "Create custom views in UIKit using UIView.", price: 26.99),
            Product(id: 30, title: "Managing App State with Redux", author: "Liam Mitchell", description: "Manage app state effectively with Redux.", price: 28.99),
            Product(id: 31, title: "MapKit and Location Services", author: "Zoe Perez", description: "Build map-based apps with MapKit and Core Location.", price: 31.99),
            Product(id: 32, title: "Bluetooth in iOS", author: "Mateo Cooper", description: "Learn how to work with Bluetooth in iOS apps.", price: 33.99),
            Product(id: 33, title: "Networking with Alamofire", author: "Daniel Roberts", description: "Use Alamofire for efficient networking in iOS.", price: 22.99),
            Product(id: 34, title: "Modern Swift Architecture", author: "Violet Bell", description: "Explore modern architecture patterns in Swift.", price: 27.99),
            Product(id: 35, title: "Full-Stack iOS Development", author: "Carter Turner", description: "Build full-stack iOS apps with Swift and Vapor.", price: 35.99),
            Product(id: 36, title: "SwiftUI Accessibility", author: "Addison Lee", description: "Create accessible apps using SwiftUI.", price: 19.99),
            Product(id: 37, title: "Using SwiftUI Previews", author: "Leo Flores", description: "Master SwiftUI previews to speed up development.", price: 21.99),
            Product(id: 38, title: "Dynamic Lists with SwiftUI", author: "Elena Young", description: "Work with dynamic lists in SwiftUI.", price: 18.99),
            Product(id: 39, title: "UIKit vs SwiftUI", author: "Brayden Allen", description: "Compare and contrast UIKit and SwiftUI.", price: 23.99),
            Product(id: 40, title: "Building Custom Animations", author: "Adeline Griffin", description: "Create custom animations with UIKit and SwiftUI.", price: 29.99),
            Product(id: 41, title: "Gesture Recognizers in iOS", author: "Riley Brooks", description: "Master gesture recognizers for interactive apps.", price: 17.99),
            Product(id: 42, title: "SwiftUI in Production", author: "Grayson Sanders", description: "Use SwiftUI effectively in production apps.", price: 25.99),
            Product(id: 43, title: "Swift Playgrounds for Educators", author: "Paisley Adams", description: "Use Swift Playgrounds as an educational tool.", price: 20.99),
            Product(id: 44, title: "Async Programming in Swift", author: "Declan Bailey", description: "Understand async programming patterns in Swift.", price: 22.99),
            Product(id: 45, title: "Swift Design Patterns", author: "Audrey Gomez", description: "Implement common design patterns in Swift.", price: 27.99),
            Product(id: 46, title: "iOS Widgets", author: "Elijah Gray", description: "Create beautiful widgets for iOS.", price: 19.99),
            Product(id: 47, title: "SwiftUI for macOS", author: "Arianna Fisher", description: "Learn how to build macOS apps with SwiftUI.", price: 34.99),
            Product(id: 48, title: "Understanding SceneKit", author: "Dylan Hughes", description: "Build 3D scenes with SceneKit in Swift.", price: 31.99),
            Product(id: 49, title: "iOS App Distribution", author: "Julia Peterson", description: "Learn how to distribute iOS apps effectively.", price: 17.99),
            Product(id: 50, title: "Managing iOS Certificates", author: "Evan Cox", description: "Manage certificates, profiles, and keys for iOS development.", price: 15.99),
        ]
    }
}
