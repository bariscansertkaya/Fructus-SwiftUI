//
//  OnboardingView.swift
//  Fructus
//
//  Created by Barış Can Sertkaya on 27.03.2023.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                //FruitCardView()
                FruitCardView(fruit: item)
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
