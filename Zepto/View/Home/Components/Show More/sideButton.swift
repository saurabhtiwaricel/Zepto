//
//  SelectionFruits&Vegetables .swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI

struct sideButton: View {
    var image: String
    var body: some View {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 80)
                .foregroundColor(.blue)

    }
}

#Preview {
    sideButton(image: "12")
}
