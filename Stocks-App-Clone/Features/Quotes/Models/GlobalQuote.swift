//
//  GlobalQuote.swift
//  Stocks-App-Clone
//
//  Created by Mehdi MMS on 28/07/2022.
//

import Foundation

struct GlobalQuoteResponse: Codable {
    var quote: String
    
    private enum CodingKeys: String, CodingKey {
        case quote = "Global Quote"
    }
}

struct Quote: Codable {
    var symbol: String
    var open: String
    var high: String
    var low: String
    var price: String
    var change: String
    var changePercent: String
    
    private enum CodingKeys: String, CodingKey {
        case symbol = "01. symbol"
        case open = "02. open"
        case high = "03. high"
        case low = "04. low"
        case price = "05. price"
        case change = "09. change"
        case changePercent = "10. change percent"
    }
}
