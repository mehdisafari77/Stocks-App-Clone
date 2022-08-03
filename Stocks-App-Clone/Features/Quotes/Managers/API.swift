//
//  API.swift
//  Stocks-App-Clone
//
//  Created by Mehdi MMS on 03/08/2022.
//

import Foundation

struct API {
    
    static var baseUrl: String {
        return "https://alphavantage.co/query?"
    }
    
    static func symbolSearchUrl(for searchKey: String) -> String {
        
    }
    
    private static func urlBy(symbol: SymbolFunction, searchKey: String) -> String {
        switch symbol {
        case .search:
            return "\(baseUrl)function"
        default:
            //
        }
    }
    enum SymbolFunction: String {
        case search = "SYMBOL_SEARCH"
        case quote = "GLOBAL_QUOTE"
    }
}
