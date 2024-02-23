//
//  FruitModel.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

//MARK: - Fruits Data Model
struct Fruit: Identifiable {
    var id = UUID()

    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
