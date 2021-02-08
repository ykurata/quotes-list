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
        
        NavigationView {
            ScrollView {
                
                ForEach(model.authors) { a in
                    VStack {
                        
                        NavigationLink(
                            destination: DetailsView(author: a),
                            label: {
                                
                                // MARK: row item
                                ZStack {
                                    Image(a.image)
                                        .resizable()
                                        .padding(.top)
                                        .scaledToFill()
                                        .frame(width: .none, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipped()
                                        .cornerRadius(10)
                                    VStack(alignment: .leading){
                                        Text(a.quotes[0])
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                        
                                        HStack {
                                            Text("―")
                                                .foregroundColor(Color.white)
                                            Text(a.name)
                                                .foregroundColor(Color.white)
                                        }
                                        .padding(.top)
                                    }
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    
                                }
                                .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                            })
                        
                    }
                }
            
            }
            .navigationBarTitle("Quotes")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorListView()
    }
}

