//
//  LootItem.swift
//  Loot
//
//  Created by HUMBLOT Stéphane on 10/01/2024.
//

import SwiftUI

struct LootItem: Identifiable, Hashable {
    var id: UUID = UUID()
    var quantity : Int = 1
    var name : String
    var type : ItemType
    var rarity : Rarity
    var attackStrength : Int?
    var game : Game
}

enum Rarity: CaseIterable {
    case common,
    uncommon,
    rare,
    epic,
    legendary,
    unique
    
    func getColor() -> Color {
        switch(self) {
            case .common: return Color.gray
            case .uncommon: return Color.green
            case .rare: return Color.blue
            case .epic: return Color.purple
            case .legendary: return Color.orange
            case .unique: return Color.red
        }
    }
}

enum ItemType : String, CaseIterable {
    case magic = "⭐️", fire = "🔥", ice = "❄️", wind = "💨", poison = "☠️", thunder = "⚡️",
         dagger = "🗡️", shield = "🛡️", bow = "🏹", ring = "💍", unknown = "🎲"
}

let lootItems: [LootItem] = [
    LootItem(
        quantity: 3,
        name: "Magic Sword",
        type: .magic,
        rarity: .epic,
        attackStrength: 20,
        game: availableGames[0]
    ),
    LootItem(
        quantity: 1,
        name: "Fire Bow",
        type: .fire,
        rarity: .legendary,
        attackStrength: 25,
        game: availableGames[1]
    ),
    LootItem(
        quantity: 5,
        name: "Dagger of Shadows",
        type: .dagger,
        rarity: .rare,
        attackStrength: 15,
        game: availableGames[2]
    ),
]
