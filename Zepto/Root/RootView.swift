//
//  RootView.swift
//  Zepto
//
//  Created by Celestial on 12/02/25.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var userViewModel: UserViewModel

    var body: some View {
        if userViewModel.isLoggedIn {
            RootTabView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    RootView().environmentObject(UserViewModel())
}
