//
//  Cart.swift
//  Zepto
//
//  Created by Celestial on 05/02/25.
//

import SwiftUI

struct CartEmpty: View {
    @State private var selectedTab: Bool = false
    var body: some View {
        ZStack{
            Color(red: 242/255 , green: 242/255, blue: 247/255)
                .ignoresSafeArea()
            VStack{
                ZStack{
                    Image("emptycart1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 370, height: 250)
                        .cornerRadius(30)
                    Button{
                        selectedTab = true
                    }label: {
                        Text("Browse Products")
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .bold()
                    }
                    .cornerRadius(10)
                    .padding(.top,150)
                }
                Spacer()
            }
            
            NavigationLink(destination: RootTabView(), isActive: $selectedTab) {
                                        EmptyView()
            }
        }
        
    }
        
}

#Preview {
    CartEmpty()
}
