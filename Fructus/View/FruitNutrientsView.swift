//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Barış Can Sertkaya on 30.03.2023.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional Value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 5)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .font(.system(.body).bold())
                        .foregroundColor(fruit.gradientColors[1])
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            } //: DisclosureGroup
        } //: GroupBox
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
