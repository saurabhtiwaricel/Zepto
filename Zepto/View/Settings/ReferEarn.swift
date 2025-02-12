//
//  ReferEarn.swift
//  Zepto
//
//  Created by Celestial on 06/02/25.
//

import SwiftUI

struct ReferEarn: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ScrollView{
                Image("refer_Earn")
                    .resizable()
                    .scaledToFit()
                Image("referral_works")
                    .resizable()
                    .scaledToFit()
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
                            }
                        }
                    }
                }
        
        Button{}label: {
            Image("Invite")
                .resizable()
                .scaledToFit()
        }
        
    }
}

#Preview {
    ReferEarn()
}
