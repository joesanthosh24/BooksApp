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
        Book(title: "Huckleberry Fin", author: "Mark Twain", image: "huck_fin"),
        Book(title: "Harry Potter and the Sorceror's Stone", author: "J.K. Rowling", image: "harry_sorc"),
        Book(title: "The Lightning Thief", author: "Rick Riordian", image: "lightning"),
        Book(title: "The Mamba Mentality, How I Play", author: "Kobe Bryant", image: "mamba"),
        Book(title: "Ikigai: Japanese Secret to Long and Happy Life", author: "Hector Garcia and Francesc Miralles", image: "ikigai"),
        Book(title: "The Wizard of Oz", author: "L. Frank Baum", image: "wizard_oz"),
        Book(title: "Harry Potter and the Sorceror's Stone", author: "J.K. Rowling", image: "harry_sorc")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Search For A Book", text: $searchContent)
                        .frame(height: 1, alignment: .center)
                        .padding()
                        .background(Color(.systemGray4))
                        .cornerRadius(5)
                }
                Section {
                    ScrollView {
                        ForEach(0..<books.count) {
                            BookView(book: books[$0])
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationBarTitle("Books")
            .edgesIgnoringSafeArea(.bottom)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
