//
//  freshVegetables.swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI

struct FreshVegetables: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 289, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
        }.padding()
        
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 289, originalPrice: "₹399", discount: "27% Off", rating: "4.6")        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 289, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 55, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 55, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 55, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
        }
    }
}

#Preview {
    FreshVegetables()
}
