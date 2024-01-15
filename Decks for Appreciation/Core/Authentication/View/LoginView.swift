//
//  LoginView.swift
//  Decks for Appreciation
//
//  Created by Neelima Gadde on 1/14/24.
//

import SwiftUI

struct LoginView: View{
    @State private var email = ""
    @State private var password = ""
    
    var body: some View{
        NavigationStack{
            VStack{
                //Image
                Image("Decks of Appreciation")
                    .resizable().scaledToFill().frame(width: 100, height: 240).padding(.vertical, 32)
                
                // form fields
                VStack(spacing: 24){
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com").autocapitalization(.none)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                //Sign in button
                Button{
                    print("Log user in...")
                } label:{
                    HStack {
                        Text("SIGN IN").fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                Spacer()
                
                //Sign up button
                
                NavigationLink {
                    RegistrationView().navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 2) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}
struct LoginView_Previews: PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}