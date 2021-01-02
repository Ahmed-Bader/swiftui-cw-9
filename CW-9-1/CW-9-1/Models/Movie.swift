//
//  Movie.swift
//  CW-9-1
//
//  Created by Ahmed Alkhuder on 2/1/21.
//

import Foundation

struct Movie: Identifiable {
    let title: String
    let characters: [String]
    
    let id = UUID()
}

var movies = [
    Movie(title: "Avengers", characters: ["captain america","thor", "hulk"]),
    Movie(title: "Deadpool", characters: ["Deadpool himself","weird people"]),
    Movie(title: "Terminator", characters: ["terminator", "the Conors"])
]
