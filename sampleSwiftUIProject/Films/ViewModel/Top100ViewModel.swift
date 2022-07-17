//
//  Top100ViewModel.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/17/22.
//

import Foundation
import Moya

class Top100ViewModel: ObservableObject {
    let provider = MoyaProvider<RequestKinopoisk>()
    var params : [String: Any] = ["type": "TOP_100_POPULAR_FILMS", "page": "1"]
    
    @Published var poster: Poster = Poster(pagesCount: 1, films: [Film]())
   
    func fetchRequest(page: Int, complition: @escaping ((Bool)->Void)){
        params["page"] = page
        let request = Request(params: params)
        provider.request(.top100Films(request)) { result in
            switch result {
            case .success(let response):
                do {
                    
                  let newPoster = try  response.map(Poster.self)
                    self.poster.films.append(contentsOf: newPoster.films)
                    complition(false)
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

