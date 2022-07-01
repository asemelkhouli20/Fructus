//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Asem on 28/06/2022.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        TabView{
            ForEach(0..<5){ item in
                FruitCardView(name: FruitData.fruitsData[item].title, subtitle: FruitData.fruitsData[item].headline)
            }
        }.tabViewStyle(.page).padding(.vertical,20)
      
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
