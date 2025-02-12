//
//  ZeptoApp.swift
//  Zepto
//
//  Created by Celestial on 29/01/25.
//

import SwiftUI

@main
struct ZeptoApp: App {
    @StateObject var userViewModel = UserViewModel()
    var body: some Scene {
        WindowGroup {

            LoginView()
                .environmentObject(userViewModel)
            

        }
    }
}
