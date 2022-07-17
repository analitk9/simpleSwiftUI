//
//  DetailFilmView.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/17/22.
//

import SwiftUI

struct DetailFilmView: View {
    @StateObject var model: DetailFilmViewModel
    
    var body: some View {
        ScrollView {
            VStack{
                Text(model.detailFilm.nameRu)
                    .font(.largeTitle)
                    .padding()
                if model.isLoaded {
                    AsyncImage(url: URL(string: model.detailFilm.posterURL)!){ phase in
                        if let image = phase.image {
                            image // Displays the loaded image.
                                .resizable()
                                .scaledToFit()
                                
                        } else if phase.error != nil {
                            Color.red // Indicates an error.
                        } else {
                            ProgressView()
                        }
                    }
                   
                   Text(model.detailFilm.purpleDescription)
                   .padding()
                }
                
            }
        }
    }
}

//struct DetailFilmView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailFilmView()
//    }
//}
