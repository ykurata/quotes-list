//
//  ContentView.swift
//  Module2-16 wrap-up
//
//  Created by Yasuko Kurata on 2021-02-05.
//

import Foundation

import SwiftUI

struct QuoteListView: View {
    
    @ObservedObject var model = QuoteModel()

    var body: some View {
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}

