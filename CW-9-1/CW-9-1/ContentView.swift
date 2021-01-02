//
//  ContentView.swift
//  CW-9-1
//
//  Created by Ahmed Alkhuder on 29/12/20.
//
// CW-9-2 update to include navigation view an details

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // adding nav view and nav links
        NavigationView{
            List
            {
                NavigationLink(
                    destination: MovieDetailsView(movie: "Avengers", characters: ["captain america","thor", "hulk"]),
                    label: {
                        MovieRow(movieName: "Avengers", mainChars: ["Deadpool himself","weird people"])
                    })
                
                NavigationLink(
                    destination: MovieDetailsView(movie: "Deadpool", characters: ["captain america","thor", "hulk"]),
                    label: {
                        MovieRow(movieName: "Deadpool", mainChars: ["Deadpool himself","weird people"])
                    })
                
                NavigationLink(
                    destination: MovieDetailsView(movie: "Terminator", characters: ["terminator", "the Conors"]),
                    label: {
                        MovieRow(movieName: "Terminator", mainChars: ["terminator", "the Conors"])
                    })
                
            }.navigationBarTitle("Movies")
        }
    }
}

struct MovieRow: View {
    let movieName : String
    let mainChars : [String]
    
    var body: some View {
        HStack(alignment: .center)
        {
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .background(Color.blue)
                .clipShape(Circle())
            
            VStack(alignment: .leading)
            {
                Text(movieName)
                    .font(.largeTitle)
                
                Text(mainChars.joined(separator: ", "))
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
