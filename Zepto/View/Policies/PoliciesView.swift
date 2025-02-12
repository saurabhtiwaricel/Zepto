//
//  PoliciesView.swift
//  Zepto
//
//  Created by Celestial on 11/02/25.
//

import SwiftUI

struct PoliciesView: View {
    var body: some View {
        VStack {
           
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .font(.title2)
                }
                Spacer()
                Text("Policies")
                    .font(.headline)
                    .bold()
                Spacer()
            }
            .padding()

            
            List {
                NavigationLink(destination: TermsOfUseView()){
                    PolicyRow(title: "Terms & Conditions", icon: "doc.text")
                }
                PolicyRow(title: "Privacy Policy", icon: "lock.fill")
                PolicyRow(title: "Open Source Licenses", icon: "terminal")
            }
            .listStyle(.plain)
        }
        .background(Color(.systemGroupedBackground))
    }
}


#Preview {
    PoliciesView()
}
