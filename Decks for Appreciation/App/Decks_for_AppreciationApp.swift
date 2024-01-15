//
//  ContentView.swift
//  Decks for Appreciation
//
//  Created by Neelima Gadde on 1/14/24.
//

import SwiftUI

@main
struct Decks_for_AppreciationApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    var body: some Scene{
        WindowGroup{
            ContentView().environmentObject(viewModel)
        }
    }
}
