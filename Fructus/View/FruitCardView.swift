//
//  FruitCardView.swift
//  Fructus
//
//  Created by Barış Can Sertkaya on 27.03.2023.
//

import SwiftUI

struct FruitCardView: View {
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.2), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.9)
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(radius: 5)
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                StartButtonView()
            } //: Vstack
        } //: Zstack
        .onAppear {
            withAnimation(.easeOut(duration: 2).repeatForever()) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,10)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[12])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
