//
//  QuoteModel.swift
//  Module2-16 wrap-up
//
//  Created by Yasuko Kurata on 2021-02-05.
//

import Foundation


class AuthorModel: ObservableObject {
    
    @Published var authors = [Author]()
    
    init() {
        self.authors = DataService.getLocalData()
    }
}
