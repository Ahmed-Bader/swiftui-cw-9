//
//  ContentView.swift
//  CW-9-1
//
//  Created by Ahmed Alkhuder on 29/12/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        List
        {
            MovieRow(movieName: "Avengers", mainChars: ["captain america","thor", "hulk"])
            MovieRow(movieName: "Deadpool", mainChars: ["Deadpool himself","weird people"])
            MovieRow(movieName: "Terminator", mainChars: ["terminator", "the Conors"])
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieRow: View {
    var movieName : String
    var mainChars : [String]
    
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
