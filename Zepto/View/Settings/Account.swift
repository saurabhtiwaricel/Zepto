//
//  Account.swift
//  Zepto
//
//  Created by Celestial on 06/02/25.


import SwiftUI

struct Account: View {
    var name:String
    var number:String
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var userViewModel: UserViewModel
    @State private var navigateToLogin = false
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    VStack(spacing: 70)
                    {
                        ZStack(){
                            Image("profile1")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 110)
                            
                            VStack(alignment: .leading){
                                Text(name)
                                    .foregroundStyle(Color.white)
                                    .bold()
                                
                                Text(number)
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding(.bottom,60)
                            .padding(.leading,-90)
                        }
                        NavigationLink(destination: ReferEarn()) {
                            Image("earn")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 110)
                        }
                        NavigationLink(destination: BalanceView()) {
                            Image("addbalance")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 50)
                        }
                        
                        
                    }
                    .padding()
                    .padding(.top,10)
                    
                    

                    NavigationLink(destination: ReferEarn()) {
                        moreButtion(name: "Refer & Earn", imageLogo: "gift")
                    }
                    Divider()

                    NavigationLink(destination: LocationView()){
                        moreButtion(name: "Addresses", imageLogo: "location")
                    }
                    Divider()
                    NavigationLink(destination: RefundsView()) {
                        moreButtion(name: "Rufunds", imageLogo: "arrow.trianglehead.clockwise.rotate.90")
                    }
                    Divider()
                    NavigationLink(destination: SuggestProductsView()) {
                        moreButtion(name: "Suggest Products", imageLogo: "checkmark.seal")
                    }
                    Divider()
                    NavigationLink(destination: ProfileView()){
                        moreButtion(name: "Profile", imageLogo: "person.crop.circle")
                    }
                    Divider()
                    NavigationLink(destination: TermsOfUseView()){
                        moreButtion(name: "General Info", imageLogo: "info.circle")
                    }
                    Divider()
                    NavigationLink(destination: NotificationsView()){
                        moreButtion(name: "Notification", imageLogo: "bell")
                    }
                    Divider()
                    
                    Button {
                        userViewModel.logout()
                        navigateToLogin = true
                    } label: {
                        Text("LogOut")
                            .foregroundStyle(Color.red)
                            .bold()
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    .padding(.top,40)
                    NavigationLink(destination: LoginView(), isActive: $navigateToLogin) {
                            EmptyView()
                        }
                    Button{
                        
                    }label: {
                        Text("App version 25.1.6\n   v45-10")
                            .foregroundStyle(Color.gray)
                    }
                    
                }
                
                
                
            }

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
                                Text("Account")
                                    .foregroundColor(.black)
                                Spacer()
                            }
                        }
                    }
                }
        
        
    }
}

#Preview {
    Account(name: "Saurabh", number: "987654781")
}



