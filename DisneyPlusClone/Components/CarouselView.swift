//
//  CarouselView.swift
//  DisneyPlusClone
//
//  Created by Oncu Can on 27.09.2022.
//

import SwiftUI

struct CarouselView: View {
    var promos: [Movie] = Movie.promos
    @State private var selectedMovie: Movie?
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            ForEach(0..<promos.count) { i in
                ZStack(alignment: .bottom) {
                    Image(promos[i].promoImage)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                    
                    Button(action: {
                        self.selectedMovie = promos[i]
                    }) {
                        Text(promos[i].title)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .frame(maxWidth: .infinity)
                            .background(Color.black.opacity(0.6).blur(radius: 3.0))
                    }
                    .sheet(item: self.$selectedMovie) { movie in
                        MovieDetailView(movie: movie)
                    }
                }.frame(width: 400)
            }
        }.modifier(ScrollingHStackModifier(items: promos.count, itemWidth: UIScreen.main.bounds.width * 0.93, itemSpacing: 30))
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            CarouselView()
        }
    }
}
