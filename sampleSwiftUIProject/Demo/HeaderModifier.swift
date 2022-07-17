//
//  HeaderModifier.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/12/22.
//

import Foundation
import SwiftUI

struct HeaderModifier: ViewModifier {

    func body(content: Content) -> some View {
       
            content
            .font(.largeTitle)
                .foregroundColor(.accentColor)
                .background(.green)
        }
    }

extension View {
    func headerModifier() -> some View {
        modifier(HeaderModifier())
    }
}
