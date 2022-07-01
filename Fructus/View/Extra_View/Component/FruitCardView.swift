//
//  FruitCardView.swift
//  Fructus
//
//  Created by Asem on 20/06/2022.
//

import SwiftUI

struct FruitCardView: View {
    @State private var isAnimating=false
    
    var name:String
    var subtitle:String
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Color\(name)Light"),Color("Color\(name)Dark")]), startPoint: .top, endPoint: .bottom).cornerRadius(20)
            VStack(spacing: 20.0){
                Image(name.lowercased()).resizable().scaledToFit()
                    .shadow(color: .black.opacity(0.3), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.7)
                Text(name).font(.largeTitle.bold())
                    .shadow(color: .black.opacity(0.3), radius: 8, x: 6, y: 8)
                Text(subtitle).padding(.horizontal).multilineTextAlignment(.center)
                StartButtonView()
            }.foregroundColor(.white)
        }.padding(.horizontal,20)
        .onAppear(perform: {withAnimation(.easeOut(duration: 0.5)) {
            isAnimating=true
        }})
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(name: "Blueberry", subtitle: "Blubery are sweet, and more text to test the long of this text will be i think that may be enaffe for now ")
            .previewLayout(.fixed(width: 320, height: 640))
    }
}

struct StartButtonView: View {
    @AppStorage("isOnBoarding") private var isOnBoarding = true
    var body: some View {
        Button {
            withAnimation {isOnBoarding = false}
           
        } label: {
            HStack{
                Text("Start")
                Image(systemName: "arrow.right.circle").imageScale(.large)
            }.padding(.horizontal,16).padding(.vertical,10)
                .background(Capsule().strokeBorder(lineWidth: 1.25))
        }

    }
}
