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
