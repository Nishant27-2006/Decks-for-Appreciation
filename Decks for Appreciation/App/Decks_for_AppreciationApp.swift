//
//  ContentView.swift
//  Decks for Appreciation
//
//  Created by Neelima Gadde on 1/14/24.
//

import SwiftUI
import Firebase

@main
struct Decks_for_AppreciationApp: App {
    @StateObject var viewModel = AuthViewModel()
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene{
        WindowGroup{
            ContentView().environmentObject(viewModel)
        }
    }
}
