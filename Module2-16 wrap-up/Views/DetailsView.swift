//
//  DetailsView.swift
//  Module2-16 wrap-up
//
//  Created by Yasuko Kurata on 2021-02-07.
//

import SwiftUI

struct DetailsView: View {
    
    var author: Author
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20.0) {
                
                //MARK: name
                Text(author.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                
                // MARK: quotes
                ForEach(author.quotes, id:\.self) { item in
                    Text(item)
                }
                Spacer()
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let model = AuthorModel()
        DetailsView(author: model.authors[0])
    }
}
