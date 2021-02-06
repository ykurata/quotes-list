//
//  Quote.swift
//  Module2-16 wrap-up
//
//  Created by Yasuko Kurata on 2021-02-05.
//

import Foundation


class Quote: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var quote:String
}
