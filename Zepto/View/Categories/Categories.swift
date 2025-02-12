//
//  Categories.swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI

struct Categories: View {
    var body: some View {
        NavigationStack{
            HStack{
                Spacer()
                Spacer()
                Text("All Categories")
                    .bold()
                Spacer()
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
            }
            Divider()
            categories()
        }
    }
}

#Preview {
    Categories()
}
