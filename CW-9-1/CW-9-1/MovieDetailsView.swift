//
//  MovieDetailsView.swift
//  CW-9-1
//
//  Created by Ahmed Alkhuder on 2/1/21.
//

import SwiftUI

struct MovieDetailsView: View {
    let movie : Movie
    
    var body: some View {
        ZStack{
            Group{
                Image(movie.title)
                .resizable()
                .scaledToFill()
                .blur(radius: 40)
                
                Color.black.opacity(0.3)
            }
            .ignoresSafeArea()
            
            VStack(alignment: .center)
            {
                Image(movie.title)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                
                Text(movie.title)
                        .font(.largeTitle)
                    
                Text(movie.characters.joined(separator: ", "))
                Spacer()
                
            }
            .padding(.vertical)
            .foregroundColor(.white)
            .shadow(radius: 8)
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: movies[0])
    }
}
