//
//  shotImage.swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI


struct shotImage: View {
    var image: String
    var title: String
    var body: some View {
        
         
                            VStack {
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 85, height: 80)
                                    .foregroundColor(.blue)

                                Text(title)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                            }


            }
        
        
    }

#Preview {
    shotImage(image: "Dariy", title: "Dairy,Bread\n& Eggs")
}
