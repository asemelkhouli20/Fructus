//
//  FruitRowView.swift
//  Fructus
//
//  Created by Asem on 29/06/2022.
//

import SwiftUI

struct FruitRowView: View {
    var name:String
    var subtitle:String
    
    var body: some View {
        HStack{
            Image(name.lowercased()).resizable().scaledToFit()
                .frame(width: 80, height: 80)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("Color\(name)Light"),Color("Color\(name)Dark")]), startPoint: .top, endPoint: .bottom).cornerRadius(8)
                )
            VStack(alignment: .leading, spacing: 5.0){
                Text(name).font(.title2.bold())
                Text(subtitle).font(.caption).foregroundColor(.secondary)
            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(name: "Blueberry", subtitle: "Blubery are sweet, and more text to test the long of this text will be i think that may be enaffe for now ").previewLayout(.sizeThatFits).padding()
    }
}
