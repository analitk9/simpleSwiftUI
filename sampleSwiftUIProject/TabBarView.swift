//
//  TabBarView.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/12/22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Demo()
                .tabItem {
                    Image(systemName: "display")
                    Text("Demo")
                }
            LoginVKView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Login")
                }
            Top100FilmList()
                .tabItem {
                    Image(systemName: "list.and.film")
                    Text("Films")
                }
        }
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
