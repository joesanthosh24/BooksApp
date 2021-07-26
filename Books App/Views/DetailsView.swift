//
//  DetailsView.swift
//  Books App
//
//  Created by Joe Santhosh on 2021-07-25.
//

import SwiftUI

struct DetailsView: View {
    var book: Book
    
    var body: some View {
        VStack {
            Image(book.image)
                .resizable()
                .frame(height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack {
                Text(book.title)
                Text("by \(book.author)")
                    .foregroundColor(.gray)
            }
            Text("Rating: \(book.stars)/5")
                .foregroundColor(Color(.systemBlue))
        }
        .navigationBarTitle("Details")
    }
}

//struct DetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsView(book: Book(title: "Huckleberry Fin", author: "Mark Twain", image: "huck_fin", stars: 5))
//    }
//}
