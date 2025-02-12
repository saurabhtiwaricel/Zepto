//
//  SuggestProductsView.swift
//  Zepto
//
//  Created by Celestial on 10/02/25.
//

import SwiftUI

struct SuggestProductsView: View {
    @State private var productSuggestion: String = ""
    @State private var showThankYouPopup: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
        ZStack {
            VStack(spacing: 20) {
                Text("Suggest Products")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Didn't find what you are looking for? Please suggest the products.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                TextField("Enter the name of the products you would like to see", text: $productSuggestion)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Button(action: {
                    submitSuggestion()
                }) {
                    Text("Send")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(productSuggestion.isEmpty ? Color.gray : Color.pink)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                .disabled(productSuggestion.isEmpty)
                
                Spacer()
            }
            .padding()
            
            
            if showThankYouPopup {
                VStack(spacing: 20) {
                    Text("Thank You!")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("🎉 We've received your suggestion.")
                        .multilineTextAlignment(.center)
                    
                    Button(action: {
                        showThankYouPopup = false
                        productSuggestion = "" // Clear text field
                    }) {
                        Text("Done")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.pink)
                            .cornerRadius(10)
                    }
                }
                .padding()
                .frame(width: 300)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(radius: 10)
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
                            Text("SuggestProducts")
                                .foregroundColor(.black)
                            Spacer()
                        }
                    }
                }
            }
        
}
    func submitSuggestion() {
        // Simulate submission process
        showThankYouPopup = true
    }
}

struct SuggestProductsView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestProductsView()
    }
}


#Preview {
    SuggestProductsView()
}
