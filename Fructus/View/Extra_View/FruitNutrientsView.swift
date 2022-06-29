//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Asem on 29/06/2022.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit:Fruit
    let nutrients = ["Energy","Suger","Fat","Protein","Vitamins","Minerals"]
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutrients value per 180g") {
                ForEach(0..<nutrients.count,id : \.self){item in
                    Divider().padding(.vertical,3)
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }.foregroundColor(fruit.gradientColors[1]).font(.body.bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item]).multilineTextAlignment(.trailing)
                        
                    }
                    
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: FruitData.fruitsData[0])
    }
}
