//
//  ZeptoPassView.swift
//  Zepto
//
//  Created by Celestial on 10/02/25.
//

import SwiftUI

struct ZeptoPassView: View {
    @State private var showSheet: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Image("ZeptoPass")
                .resizable()
                .scaledToFit()

            Button(action: {
                showSheet = true
                
            }) {
                Text("Redeem Now")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .cornerRadius(10)
            }
            .padding()
        }
        .sheet(isPresented: $showSheet) {
            Redeem()
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
    }
}



#Preview {
    ZeptoPassView()
}
