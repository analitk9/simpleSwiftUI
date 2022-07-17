//
//  FilmListItem.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/17/22.
//

import SwiftUI

struct FilmListItem: View {
    var film: Film
    var body: some View {
            CacheAsyncImage(url: URL(string: film.posterURL)!, content: { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                } else if phase.error != nil {
                    Color.red
                } else {
                    ProgressView()
                }
            })
    }
}

//struct FilmListItem_Previews: PreviewProvider {
//    static var previews: some View {
//        FilmListItem()
//    }
//}
