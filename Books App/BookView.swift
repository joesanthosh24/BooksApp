//
//  BookView.swift
//  Books App
//
//  Created by Joe Santhosh on 2021-07-25.
//

import SwiftUI

struct BookView: View {
    let book: Book
    
    var body: some View {
        HStack {
            Image("\(book.image)")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            VStack {
                HStack {
                    Text((book.title))
                        .foregroundColor(Color(.label))
                        .fontWeight(.medium)
                    Spacer()
                }
                HStack {
                    Text("by \(book.author)")
                        .foregroundColor(.gray)
                    Spacer()
                }
                Spacer()
            }
            .frame(alignment: .leading)
            Spacer()
        }
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 10))
    }
}
