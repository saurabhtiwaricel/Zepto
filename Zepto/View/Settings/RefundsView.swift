//
//  General.swift
//  Zepto
//
//  Created by Celestial on 10/02/25.
//

import SwiftUI

struct RefundsView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "arrow.counterclockwise.circle.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(.pink)
                .overlay(
                    Text("0")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.white)
                        .padding(6)
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(x: 20, y: -20),
                    alignment: .topTrailing
                )
            
            
            Text("No Refunds")
                .font(.title3)
                .bold()
                .padding(.top, 10)
            
            Text("You have no active or past refunds.")
                .font(.body)
                .foregroundColor(.gray)
            
            Spacer()
        }.navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                            Spacer()
                            Text("Refunds")
                                .foregroundColor(.black)
                            Spacer()
                        }
                    }
                }
            }

    }
}

#Preview {
    RefundsView()
}
