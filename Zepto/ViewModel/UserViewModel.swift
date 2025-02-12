//
//  UserViewModel.swift
//  Zepto
//
//  Created by Celestial on 09/02/25.
//

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var phoneNumber: String = ""
    @Published var name:String = ""
    @Published var email:String = ""
    @Published var isLoggedIn: Bool {
            didSet {
                UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")
            }
        }

        init() {
            self.phoneNumber = UserDefaults.standard.string(forKey: "userPhoneNumber") ?? ""
            self.isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
        }

        func saveUser() {
            UserDefaults.standard.set(phoneNumber, forKey: "userPhoneNumber")
            isLoggedIn = true
        }

        func logout() {
            UserDefaults.standard.removeObject(forKey: "userPhoneNumber")
            UserDefaults.standard.set(false, forKey: "isLoggedIn")
            phoneNumber = ""
        }
    }
