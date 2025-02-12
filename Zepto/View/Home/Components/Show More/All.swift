//
//  All.swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI

struct All: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        
            HStack{
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables911", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            }.padding()
            
            HStack{
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables911", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            }
            HStack{
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables911", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            }
            HStack{
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables911", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            }
            HStack{
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables911", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            }
            HStack{
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables911", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            }
       
    }
}

#Preview {
    All()
}
