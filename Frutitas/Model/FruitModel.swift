//
//  FruitModel.swift
//  Frutitas
//
//  Created by Aneudys Amparo on 21/2/24.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL
struct Fruit: Identifiable {
    var id  = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
