//
//  ContentView.swift
//  Books App
//
//  Created by Joe Santhosh on 2021-07-22.
//

import SwiftUI

struct ContentView: View {
    @State var searchContent: String = ""
    var books: [Book] = [
        Book(title: "Huckleberry Fin"),
        Book(title: "Harry Potter and the Sorceror's Stone")
    ]
    
    var body: some View {
        NavigationView {
//            List(books) { book in
//                Text(book.title)
//            }
            List {
                Text(books[0].title)
                Text(books[1].title)
            }
            .foregroundColor(.black)
            .navigationBarTitle("Books")
        }
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Book {
    var title: String
}
