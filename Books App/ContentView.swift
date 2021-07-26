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
        Book(title: "Huckleberry Fin", author: "Mark Twain", image: "huck_fin", stars: 5),
        Book(title: "Harry Potter and the Sorceror's Stone", author: "J.K. Rowling", image: "harry_sorc", stars: 5),
        Book(title: "The Lightning Thief", author: "Rick Riordian", image: "lightning", stars: 4),
        Book(title: "The Mamba Mentality, How I Play", author: "Kobe Bryant", image: "mamba", stars: 5),
        Book(title: "Ikigai: Japanese Secret to Long and Happy Life", author: "Hector Garcia and Francesc Miralles", image: "ikigai", stars: 3),
        Book(title: "The Wizard of Oz", author: "L. Frank Baum", image: "wizard_oz", stars: 4)
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
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "magnifyingglass")
                    })
                }
                Section {
                    ScrollView {
                        ForEach(0..<books.count) { num in
                            NavigationLink(
                                destination: DetailsView(book: books[num]),
                                label: {
                                    BookView(book: books[num])
                                })
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
