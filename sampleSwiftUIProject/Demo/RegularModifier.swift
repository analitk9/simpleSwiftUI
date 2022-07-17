//
//  RegularModifier.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/17/22.


import Foundation
import SwiftUI

struct RegularModifier: ViewModifier {

    func body(content: Content) -> some View {
       
            content
            .font(.body)
            .foregroundColor(.brown)
                
        }
    }

extension View {
    func regularModifier() -> some View {
        modifier(RegularModifier())
    }
}
