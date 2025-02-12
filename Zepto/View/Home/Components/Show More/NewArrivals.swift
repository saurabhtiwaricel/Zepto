//
//  NewArrivals.swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI

struct NewArrivals: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }.padding()
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")

        }
    }
}

#Preview {
    NewArrivals()
}
