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
        return urlBy(symbol: .search, searchKey: searchKey)
    }
    
    static func quoteUrl(for searchKey: String) -> String {
        return urlBy(symbol: .quote, searchKey: searchKey)
    }
    
    private static func urlBy(symbol: SymbolFunction, searchKey: String) -> String {
        switch symbol {
        case .search:
            return "\(baseUrl)function=\(symbol.rawValue)&apiKey=\(key)&keywords=\(searchKey)"
        case .quote:
            return "\(baseUrl)function=\(symbol.rawValue)&apiKey=\(key)&symbol=\(searchKey)"
        }
    }
    enum SymbolFunction: String {
        case search = "SYMBOL_SEARCH"
        case quote = "GLOBAL_QUOTE"
    }
}

extension API {
    static var key: String {
        return "QWRS2BVSG2REYMY5"
    }
}
