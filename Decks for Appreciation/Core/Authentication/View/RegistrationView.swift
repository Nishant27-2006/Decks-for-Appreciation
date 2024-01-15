//
//  RegistrationView.swift
//  Decks for Appreciation
//
//  Created by Neelima Gadde on 1/14/24.
//
import SwiftUI

struct RegistrationView: View{
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack{
            //Image
            Image("Decks of Appreciation")
                .resizable().scaledToFill().frame(width: 100, height: 240).padding(.vertical, 32)
            
            // form fields
            VStack(spacing: 24){
                InputView(text: $email, title: "Email Address", placeholder: "name@example.com").autocapitalization(.none)
                
                InputView(text: $fullname, title: "Full Name", placeholder: "Enter your password", isSecureField: true)
                InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Enter your password", isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            Button{
                Task{
                    try await viewModel.createUser(withEmail: email, password: password, fullname: fullname)
                }
            } label:{
                HStack {
                    Text("SIGN UP").fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            }
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 24)
            Spacer()
            
            Button{
                dismiss()
            } label:{
                HStack(spacing: 2) {
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View{
        RegistrationView()
    }
}
