//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Feduk on 29.08.2021.
//
//VIEW MODEL


import SwiftUI


class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["🚜","🚒","✈️","🚁","🚀","🛸","🛺","🛴","🚔","🚚","🚌","🚗","🚕","🏎","🚑","🛻","🚲","🛵","🚃","🚡","🛰","🛶","⛵️","🛥"]

    static func createMemoryGame() -> MemoryGame<String> {
        
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in EmojiMemoryGame.emojis[pairIndex] }
        
    }
    
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

