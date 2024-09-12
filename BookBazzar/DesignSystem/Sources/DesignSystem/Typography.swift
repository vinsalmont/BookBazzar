//
//  File.swift
//
//
//  Created by Vinícius Salmont on 11/09/24.
//

import SwiftUI

public enum Typography {
    // Titles
    public static let largeTitle = Font.system(size: 34, weight: .bold, design: .default)
    public static let title = Font.system(size: 28, weight: .semibold, design: .default)

    // Subtitles & Headings
    public static let subtitle = Font.system(size: 22, weight: .medium, design: .default)
    public static let heading = Font.system(size: 20, weight: .semibold, design: .default)

    // Body text
    public static let body = Font.system(size: 16, weight: .regular, design: .default)
    public static let caption = Font.system(size: 12, weight: .regular, design: .default)

    // Buttons and TextField labels
    public static let buttonText = Font.system(size: 18, weight: .semibold, design: .rounded)
    public static let inputText = Font.system(size: 16, weight: .regular, design: .default)
}
