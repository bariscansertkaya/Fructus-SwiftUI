//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Barış Can Sertkaya on 29.03.2023.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        //Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[0])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //Link
                        SourceLinkView(fruit: fruit)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                            
                    } //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640,alignment: .center)
                    .navigationTitle(fruit.title)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar(.hidden)
                } //: VStack
                

            }
            .edgesIgnoringSafeArea(.top)
        }

    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
