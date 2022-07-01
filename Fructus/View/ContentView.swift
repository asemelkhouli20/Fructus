//
//  ContentView.swift
//  Fructus
//
//  Created by Asem on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State  var isSettingsViewShow = false
    var body: some View {
        NavigationView{
            List{
                ForEach(FruitData.fruitsData.shuffled()){fruit in
                    NavigationLink(destination: {DetailtFruitView(fruit: fruit)}) {
                        FruitRowView(name: fruit.title, subtitle: fruit.headline).padding(.vertical,8)
                    }
                    
                }
            }.listStyle(.grouped)
            
                .toolbar{ ToolbarItem(placement: .navigationBarTrailing) {
                    Button( action: { isSettingsViewShow=true} ) { Image(systemName: "slider.horizontal.3") }
                        .sheet(isPresented: $isSettingsViewShow) {SettingsView()}
                }//ToolBar End
                    
                }
                .navigationTitle("Fruit")
        }
        .navigationViewStyle(.stack)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
