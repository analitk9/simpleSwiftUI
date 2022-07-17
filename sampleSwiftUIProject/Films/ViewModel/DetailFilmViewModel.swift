//
//  DetailFilmViewModel.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/17/22.
//

import Foundation
import Moya

class DetailFilmViewModel: ObservableObject {
    
    let provider = MoyaProvider<RequestKinopoisk>()
    @Published var detailFilm: DetailFilm = DetailFilm()
    @Published var isLoaded = false
    var idFilm: Int
   
    init (idFilm: Int) {
        self.idFilm = idFilm
        fetch()
    }
    
    func fetch(){
        provider.request(.detailFilm(String(idFilm))) { result in
            switch result {
            case .success(let response):
                do {
                    self.detailFilm = try  response.map(DetailFilm.self)
                    self.isLoaded = true
                }
                catch {
                    print(error.localizedDescription)
                }
            case .failure(let error ):
                print(error.localizedDescription)
                
            }
        }
    }

    
}
