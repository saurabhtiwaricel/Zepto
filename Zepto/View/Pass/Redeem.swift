//
//  Redeem.swift
//  Zepto
//
//  Created by Celestial on 11/02/25.
//

import SwiftUI

struct Redeem: View {
    @State private var couponCode: String = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("Redeem Membership Coupon")
                .font(.headline)
                .bold()

            TextField("Enter coupon code", text: $couponCode)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.purple, lineWidth: 2))

            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Redeem")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(couponCode.isEmpty ? Color.gray : Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .disabled(couponCode.isEmpty)
        }
        .frame(maxWidth: 300)
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
        .shadow(radius: 5)
    }
}



#Preview {
    Redeem()
}
