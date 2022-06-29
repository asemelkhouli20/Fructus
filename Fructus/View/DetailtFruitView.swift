//
//  DetailtFruitView.swift
//  Fructus
//
//  Created by Asem on 29/06/2022.
//

import SwiftUI

struct DetailtFruitView: View {
    var fruit:Fruit
    var body: some View {
        ScrollView{
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color("Color\(fruit.title)Light"),Color("Color\(fruit.title)Dark")]), startPoint: .top, endPoint: .bottom)
                Image(fruit.title.lowercased()).resizable().scaledToFit().padding()
            }.frame(height: 400)
            
            VStack(alignment: .leading, spacing: 20){
                Text(fruit.title)
                    .font(.title).fontWeight(.heavy)
                    .foregroundColor(fruit.gradientColors[1])
                Text(fruit.headline).font(.headline)
                
                FruitNutrientsView(fruit: fruit)
                
                Text("Learn more about \(fruit.title)".uppercased()).bold()
                    .foregroundColor(fruit.gradientColors[1]).padding(.top,8)
                
                Text(fruit.description)
                
                SourseLinkView().padding(.bottom,40)
                
            }.padding(20).frame(maxWidth: 640)
            
            
        }.ignoresSafeArea()
    }
}

struct DetailtFruitView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailtFruitView(fruit: FruitData.fruitsData[0])
            
        }
    }
}

struct SourseLinkView: View {
    var body: some View {
        GroupBox{
            HStack(spacing: 2.0){
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://Wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }.font(.footnote)
        }
    }
}
