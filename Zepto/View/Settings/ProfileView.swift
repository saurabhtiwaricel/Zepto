//
//  Profile.swift
//  Zepto
//
//  Created by Celestial on 10/02/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var name: String = ""
    @State private var phoneNumber: String = ""
    @State private var email: String = ""
    @EnvironmentObject var userViewModel: UserViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20) {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Name *")
                        .font(.headline)
                        .foregroundColor(.purple)
                    TextField("Enter your name", text: $userViewModel.name)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }
                
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Mobile Number *")
                        .font(.headline)
                        .foregroundColor(.purple)
                    TextField("Enter your number", text: $userViewModel.phoneNumber)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .disabled(true) // Read-only
                        .foregroundColor(.gray)
                }
                
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Email Address *")
                        .font(.headline)
                        .foregroundColor(.purple)
                    TextField("Enter your email", text: $userViewModel.email)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    Text("We promise not to spam you")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                
                Button(action: {
                    print("Profile Updated")
                }) {
                    Text("Submit")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.purple)
                        .cornerRadius(10)
                }
                .padding(.top, 10)
                
                Spacer()
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                            Spacer()
                            Text("Profile")
                                .foregroundColor(.black)
                            Spacer()
                        }
                    }
                }
            }

    }
   
}
#Preview {
    ProfileView().environmentObject(UserViewModel())
}

