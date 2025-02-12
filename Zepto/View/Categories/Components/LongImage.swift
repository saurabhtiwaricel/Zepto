//
//  LongImage.swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI

struct LongImage: View {
    var image: String
    var title: String
    var body: some View {
        
         
                            VStack {
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 190, height: 80)
                                    .foregroundColor(.blue)

                                Text(title) 
                                    .font(.headline)
                                    .foregroundColor(.primary)
                            }


            }
        
        
    }


#Preview {
    LongImage(image: "Fruits", title: "Fruits & \n Vegetables")
}
