//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Barış Can Sertkaya on 30.03.2023.
//

import SwiftUI

struct SourceLinkView: View {
    var fruit: Fruit
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/\(fruit.title)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
