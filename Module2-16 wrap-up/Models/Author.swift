//
//  Quote.swift
//  Module2-16 wrap-up
//
//  Created by Yasuko Kurata on 2021-02-05.
//

import Foundation


class Author: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
    
}
