//
//  ContentView.swift
//  Decks for Appreciation
//
//  Created by Neelima Gadde on 1/14/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View{
        if viewModel.userSession != nil {
                ProfileView()
        } else {
                LoginView()
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
