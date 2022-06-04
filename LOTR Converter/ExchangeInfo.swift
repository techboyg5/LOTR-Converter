//
//  ExchangeInfo.swift
//  LOTR Converter
//
//  Created by Jordan Nicodemus on 3/2/22.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var Dismiss
    
    var body: some View {
        ZStack {
            // Background image; parchment
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                
                // Body text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                // Exchange rates
                ExchangeRate(leftApple: "goldpiece", text: "1 Gold Piece = 4 Gold Pennies", rightApple: "goldpenny")
                ExchangeRate(leftApple: "goldpenny", text: "1 Gold Penny = 4 Silver Pieces", rightApple: "silverpiece")
                ExchangeRate(leftApple: "silverpiece", text: "1 Silver Piece = 4 Silver Pennies", rightApple: "silverpenny")
                ExchangeRate(leftApple: "silverpenny", text: "1 Silver Penny = 100 Copper Pennies", rightApple: "copperpenny")
                ExchangeRate(leftApple: "bronzepiece", text: "1 Bronze Piece = 1984 Silver Pennies", rightApple: "silverpenny")
                
                Text("Made by Jordy!")
                
                // Done button
                Button("Done") {
                    Dismiss()
                }
                .font(.largeTitle)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
            }
            .foregroundColor(.black)
        }
    }
}

struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
            .preferredColorScheme(.dark)
    }
}
