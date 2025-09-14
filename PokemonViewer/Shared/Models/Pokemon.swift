//
//  Pokemon.swift
//  PokemonViewer
//
//  Created by Maksym Soroka on 12.09.2025.
//

struct Pokemon: Decodable, Identifiable, Hashable {
    
    struct Sprites: Decodable {
        
        enum CodingKeys: String, CodingKey {
            
            case frontDefault = "front_default"
        }
        
        let frontDefault: String
    }
    
    let id: Int
    var name: String
    let height: Int
    let weight: Int
    let sprites: Sprites
    
    static func == (lhs: Pokemon, rhs: Pokemon) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

struct PokemonList: Decodable {
  
  struct PokemonItem: Decodable {
    
    let name: String
    let url: String
  }
  
  let results: [PokemonItem]
}
