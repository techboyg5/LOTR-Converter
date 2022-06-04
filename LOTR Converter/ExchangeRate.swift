//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by Jordan Nicodemus on 3/3/22.
//

import SwiftUI

struct ExchangeRate: View {
    @State var leftApple: String
    @State var text: String
    @State var rightApple: String
    
    var body: some View {
        HStack {
            // Left currency image
            Image(leftApple)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(text)
            
            // Right currency image
            Image(rightApple)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(leftApple: "goldpenny", text: "1 Gold Penny = 4 Silver Pieces", rightApple: "silverpiece")
            .previewLayout(.sizeThatFits)
    }
}
