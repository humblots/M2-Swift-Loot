//
//  ContentView.swift
//  Loot
//
//  Created by HUMBLOT Stéphane on 10/01/2024.
//

import SwiftUI

class Inventory: ObservableObject {
   @Published var loot = lootItems
    
    
    func addItem(item: LootItem) {
        loot.append(item)
    }
}

struct ContentView: View {
    
    @StateObject var inventory = Inventory()
    @State var addItemSheetPresented : Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Button(action: {
                    //inventory.addItem(item: "Magie de feu")
                }, label: {
                    Text("Ajouter")
                })
                ForEach(inventory.loot, id: \.id) { item in
                    VStack(alignment: .leading) {
                        HStack {
                                Circle().fill(item.rarity.getColor()).frame(width: 10)
                                Text(item.name)
                                Spacer()
                                Text(item.type.rawValue)
                        }
                        Text("Quantité: \(item.quantity)")
                    }
                }
            }
            .sheet(isPresented: $addItemSheetPresented, content: {
                    AddItemView()
                    .environmentObject(inventory)
                })
            .navigationBarTitle("Loot") // Notre titre de page, choisissez le titre que vous voulez
                .toolbar(content: { // La barre d'outil de notre page
                    ToolbarItem(placement: ToolbarItemPlacement.automatic) {
                        Button(action: {
                            addItemSheetPresented.toggle() // L'action de notre bouton
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                        })
                    }
                })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
