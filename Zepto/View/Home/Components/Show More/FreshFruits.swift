//
//  FreshFruits.swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI

struct FreshFruits: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
        }.padding()
        
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            
        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            
        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            
        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            
        }
    }

}

#Preview {
    FreshFruits()
}
