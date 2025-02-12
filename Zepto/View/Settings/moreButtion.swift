//
//  moreButtion.swift
//  Zepto
//
//  Created by Celestial on 06/02/25.
//

import SwiftUI

struct moreButtion: View {
    var name :String
    var imageLogo:String
    var body: some View {
        HStack{
            Image(systemName: imageLogo)
                .padding()
                
            Text(name)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(Color.red)
        }
        .padding()
       
    }
}

#Preview {
    moreButtion(name: "Orders", imageLogo: "bag")
}
