//
//  ContentView.swift
//  Module2-16 wrap-up
//
//  Created by Yasuko Kurata on 2021-02-05.
//

import Foundation

import SwiftUI

struct AuthorListView: View {
    
    @ObservedObject var model = AuthorModel()

    var body: some View {
        VStack {
            Text("Quotes")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            List(model.authors) { a in
                VStack {
                    Image(a.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipped()
                        .cornerRadius(10)
                }
                
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorListView()
    }
}

