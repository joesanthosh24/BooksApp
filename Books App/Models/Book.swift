//
//  Book.swift
//  Books App
//
//  Created by Joe Santhosh on 2021-07-24.
//

import Foundation

struct Book {
    var title: String
    var author: String
    var image: String
    var stars: Int
}

var bookData: [Book] = [
    Book(title: "Huckleberry Fin", author: "Mark Twain", image: "huck_fin", stars: 5),
    Book(title: "Harry Potter and the Sorceror's Stone", author: "J.K. Rowling", image: "harry_sorc", stars: 5),
    Book(title: "The Lightning Thief", author: "Rick Riordian", image: "lightning", stars: 4),
    Book(title: "The Mamba Mentality, How I Play", author: "Kobe Bryant", image: "mamba", stars: 5),
    Book(title: "Ikigai: Japanese Secret to Long and Happy Life", author: "Hector Garcia and Francesc Miralles", image: "ikigai", stars: 3),
    Book(title: "The Wizard of Oz", author: "L. Frank Baum", image: "wizard_oz", stars: 4)
]
