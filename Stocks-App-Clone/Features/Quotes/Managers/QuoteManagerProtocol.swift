//
//  QuoteManagerProtocol.swift
//  Stocks-App-Clone
//
//  Created by Mehdi MMS on 04/08/2022.
//

import Foundation

protocol QuoteManagerProtocol {
    var quotes: [Quote] { get set }
    func download(stock: [String], completion: @escaping (Result<[Quote], NetworkError>) -> Void)
}
