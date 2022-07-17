//
//  Top100FilmList.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/13/22.
//

import SwiftUI

struct Top100FilmList: View {
    @StateObject var model = Top100ViewModel()
    @State private var isLoading: Bool = false
    @State var page = 1
    
    var body: some View {
        NavigationView {
            List(model.poster.films){ film in
                NavigationLink {
                    DetailFilmView(model: DetailFilmViewModel(idFilm: film.id))
                } label: {
                    VStack{
                        FilmListItem(film: film)
                        if self.isLoading &&
                            self.model.poster.films.isLastItem(film) {
                            Divider()
                            Text("Loading ...")
                                .padding(.vertical)
                        }
                    }.onAppear{
                        self.listItemAppears(film)
                    }
                }
            }.onAppear{
                model.fetchRequest(page: 1, complition: {isLoading in
                    self.isLoading = isLoading
                })
            }
            .navigationTitle("Top 100 фильмов")
        }
    }
}
extension Top100FilmList {
    private func listItemAppears<Item: Identifiable>(_ item: Item) {
        if model.poster.films.isLastItem(item) {
            isLoading = true
            page = page + 1
            if model.poster.films.count == 100 {
                isLoading.toggle()
                return
            }
            model.fetchRequest(page: page, complition: { isLoading in
                self.isLoading = isLoading
            })
            
        }
    }
}

struct Top100FilmList_Previews: PreviewProvider {
    static var previews: some View {
        Top100FilmList()
    }
}
