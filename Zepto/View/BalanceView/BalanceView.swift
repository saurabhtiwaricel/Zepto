//
//  BalanceView.swift
//  Zepto
//
//  Created by Celestial on 10/02/25.
//

import SwiftUI

struct BalanceView: View {
    @State private var selectedAmount: Int? = 1000
    let amounts = [500, 1000, 2000, 5000]
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Available Balance")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text("₹0")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(15)
                .padding(.horizontal)
                
                // Features Section
                HStack {
                    FeatureBalanceView(icon: "bolt.fill", text: "Easy & Fast\nPayments")
                    FeatureBalanceView(icon: "indianrupeesign.circle.fill", text: "Instant\nRefunds")
                    FeatureBalanceView(icon: "percent", text: "Exclusive\nOffers")
                }
                
                // Add Money Section
                VStack(alignment: .leading, spacing: 10) {
                    Text("Add Money to Zepto Cash")
                        .font(.headline)
                    
                    Text("Enter Amount")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    TextField("₹\(selectedAmount ?? 1000)", text: .constant("₹\(selectedAmount ?? 1000)"))
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                    
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 10) {
                        ForEach(amounts, id: \.self) { amount in
                            Button(action: {
                                selectedAmount = amount
                            }) {
                                Text("₹\(amount)")
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(selectedAmount == amount ? Color.purple.opacity(0.2) : Color.gray.opacity(0.1))
                                    .foregroundColor(.black)
                                    .cornerRadius(8)
                                    .overlay(
                                        selectedAmount == amount ?
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color.purple, lineWidth: 2) :
                                            RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color.clear, lineWidth: 2)
                                    )
                            }
                        }
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.horizontal)
                
                
                Button(action: {
                    print("Adding ₹\(selectedAmount ?? 1000) to balance")
                }) {
                    Text("Add Balance")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                
                HStack {
                    Image(systemName: "gift.fill")
                        .foregroundColor(.purple)
                    Text("Have a Gift Card?")
                        .font(.headline)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Add Card")
                            .font(.subheadline)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 8)
                            .background(Color.purple.opacity(0.2))
                            .foregroundColor(.purple)
                            .cornerRadius(8)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.horizontal)
                
                Spacer()
            }
            .background(Color(.systemGray6).edgesIgnoringSafeArea(.all))
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
//                            Spacer()
//                            Text("SuggestProducts")
//                                .foregroundColor(.black)
//                            Spacer()
                        }
                    }
                }
            }

    }
        
}


#Preview {
    BalanceView()
}
