//
//  AddItemView.swift
//  Loot
//
//  Created by HUMBLOT Stéphane on 10/01/2024.
//

import SwiftUI

struct AddItemView: View {
    
    @State var name: String = ""
    @State var rarity: Rarity = .common
    @State var game: Game = Game.emptyGame
    @State var quantity: Int = 1
    @State var type: ItemType = ItemType.magic
    
    @EnvironmentObject var inventory: Inventory
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            Section {
                TextField("Nom de l'objet", text: $name)
                Picker("Rareté ", selection: $rarity) {
                    ForEach(Rarity.allCases, id: \.self)
                    {
                        rarity in
                        Text(String(describing: rarity).capitalized)
                    }
                }
            }
            
            Section {
                Picker("Jeu", selection: $game) {
                    ForEach(availableGames, id: \.id)
                    {
                        game in Text(game.name)
                    }
                }
                Stepper("Combien: \(quantity)", value: $quantity)
            }
            
            Section {
                HStack {
                    Text("Type")
                    Spacer()
                    Text(type.rawValue)
                }
                Picker("Type", selection: $type) {
                    ForEach(ItemType.allCases, id: \.rawValue) {
                        type in Text(type.rawValue)
                    }
                }.pickerStyle(.menu)
            }
            
            Button(
                action: {
                    //inventory.addItem(item: name)
                    presentationMode.wrappedValue.dismiss()
                },
                label: {
                HStack {
                    Image(systemName: "plus.app.fill")
                    Text("Ajouter")
                }
            })
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
 
