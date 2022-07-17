//
//  Demo.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/12/22.
//

import SwiftUI

struct Demo: View {
    
    @State private var counter: Float = 0
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .headerModifier()
                .padding()
            Text("\(counter)")
                .regularModifier()
            Slider(value: $counter, in: 1...10) {
            }
        }
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
