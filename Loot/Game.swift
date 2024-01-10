//
//  Game.swift
//  Loot
//
//  Created by HUMBLOT Stéphane on 10/01/2024.
//

import Foundation

enum GameGenre {
    case mmorpg, rpg, looter, fps, tps, strategy, unset
}

struct Game: Identifiable, Hashable {
    let name: String
    let id: UUID = UUID()
    let genre: GameGenre
    let coverName : String?
    
    static var emptyGame = Game(name: "", genre: .unset, coverName: nil)
}

// Hesitez pas mettre vos propres jeux dans la liste
let availableGames = [
    Game(
        name: "Apex Legends",
        genre: .fps,
        coverName: "apex"
    ),
    Game(
        name: "Wakfu",
        genre: .rpg,
        coverName: "wakfu"
    ),
    Game(
        name: "Cyberpunk 2077",
        genre: .fps,
        coverName: "cyberpunk"
    ),
]
