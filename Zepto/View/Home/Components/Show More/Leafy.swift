//
//  Leafy.swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI

struct Leafy: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }.padding()
        
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        
        HStack{
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables3", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
            ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables2", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")

        }
        
    }
}

#Preview {
    Leafy()
}
