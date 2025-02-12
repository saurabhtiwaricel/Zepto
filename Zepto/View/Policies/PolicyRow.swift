//
//  PolicyRow.swift
//  Zepto
//
//  Created by Celestial on 11/02/25.
//

import SwiftUI

struct PolicyRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.purple)
                    .font(.title3)
                Text(title)
                    .font(.headline)
                    .foregroundColor(.purple)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 8)
        }
    
}


#Preview {
    PolicyRow(title: "Terms & Conditions", icon: "doc.text")
}
