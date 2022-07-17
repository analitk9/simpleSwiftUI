//
//  RequestKinopoisk.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/17/22.
//

import Foundation

import Moya

struct Request {
    let params: [String: Any]
}

enum RequestKinopoisk {
    case top100Films(Request)
    case detailFilm(String)
    
}

extension RequestKinopoisk: TargetType {
   
    var sampleData: Data {
        return Data()
    }

    private static let host = "kinopoiskapiunofficial.tech/api/v2.2"
    private static let url = "https://\(RequestKinopoisk.host)"
    private static let apiKey = "dbba68ce-d92e-4d4b-a5e0-84f76fd312cf"
    
    var baseURL: URL {
        URL(string: RequestKinopoisk.url)!
    }
    
    var path: String {
        switch self {
        case .top100Films:
            return "/films/top"
        case .detailFilm(let id):
            return "/films/\(id)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .top100Films, .detailFilm:
            return .get
        }
    }
    
    
    var task: Task {
        switch self {
        case  .top100Films(let request):
            return .requestParameters(parameters: request.params, encoding: URLEncoding.default)
        case  .detailFilm:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        ["X-API-KEY": Self.apiKey] 
    }

    
}

