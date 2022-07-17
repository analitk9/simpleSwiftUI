//
//  LoginVKView.swift
//  sampleSwiftUIProject
//
//  Created by Denis Evdokimov on 7/12/22.
//

import SwiftUI

struct LoginVKView: View {
    @State var loginText = ""
    @State var passwordText = ""
    var body: some View {
        VStack{
            Spacer()
            Image("VKloginImage")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Spacer().frame(height: 100)
            
            VStack(alignment: .center, spacing: 0.0) {
                TextField("Email or phone", text: $loginText)
                    .padding(10)
               Divider()
                SecureField("Password", text: $passwordText)
                    .padding(10)
            }
                .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke()}
                .padding([.leading,.trailing])
            Spacer().frame(height: 40)
            Button(action: {
                print("Button action")
            }) {
                Text("Log in")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 66.0/255, green: 108.0/255, blue: 169.0/255, opacity: 1.0)).cornerRadius(10)
                    .padding([.leading,.trailing])
            }

            Spacer()
           
        }
        
    }
}

struct LoginVKView_Previews: PreviewProvider {
    static var previews: some View {
        LoginVKView()
    }
}
