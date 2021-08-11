//
//  ContentView.swift
//  Books App
//
//  Created by Joe Santhosh on 2021-07-22.
//

import SwiftUI

struct ContentView: View {
    @State private var searchContent: String = ""
    
    @State private var books: [Book] = bookData
    
    var body: some View {
        NavigationView {
            VStack {
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
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
