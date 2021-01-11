//
//  ContentView.swift
//  CW-9-1
//
//  Created by Ahmed Alkhuder on 29/12/20.
//
// CW-9-2 update to include navigation view an details
// movie rows

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // adding nav view and nav links
        NavigationView{
            /*
             list of the array movies (from Movie swift file)
             movie: is the var from MovieRow (var movie : Movie)
             film is a name i choose to represent what is taken
             from the swift file
             
             in == like a for loop that shows the rows of navigation links
             we use the name we chose (in this case : film) to send to the subview
            */
            List(movies) { film in NavigationLink(
                    destination: MovieDetailsView(movie: film),
                    label: {
                        MovieRow(movie: film)
                    })
            }.navigationBarTitle("Movies")
        }
    }
}

struct MovieRow: View {
    var movie : Movie // from the Movie Swift file
    
    var body: some View {
        HStack(alignment: .center)
        {
            Image(movie.title)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            VStack(alignment: .leading)
            {
                Text(movie.title)
                    .font(.largeTitle)
                
                Text(movie.characters.joined(separator: ", "))
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
