//
//  Currency.swift
//  LOTR Converter
//
//  Created by Jordan Nicodemus on 3/10/22.
//

import Foundation

enum Currency: Double, CaseIterable {
    case copperPenny = 640
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    case bronzePiece = 1984
    
    func convert(amountString: String, to currency: Currency) -> String {
        guard let startAmount = Double(amountString) else {
            return ""
        }
        
        let convertedAmount = (startAmount / self.rawValue) * currency.rawValue
        
        if (convertedAmount > 0) {
            return String(format: "%.2f", convertedAmount)
        } else {
            return ""
        }
    }
}

enum CurrencyText: String, CaseIterable {
    case copperPenny = "Copper Penny"
    case silverPenny = "Silver Penny"
    case gilverPiece = "Silver Piece"
    case goldPenny = "Gold Penny"
    case goldPiece = "Gold Piece"
    case bronzePiece = "Bronze Piece"
}

enum CurrencyImage: String, CaseIterable {
    case copperPenny = "copperpenny"
    case silverPenny = "silverpenny"
    case silverPiece = "silverpiece"
    case goldPenny = "goldpenny"
    case goldPiece = "goldpiece"
    case bronzePiece = "bronzepiece"
}
