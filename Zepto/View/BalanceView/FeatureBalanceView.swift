//
//  FeatureBalanceView.swift
//  Zepto
//
//  Created by Celestial on 10/02/25.
//

import SwiftUI

struct FeatureBalanceView: View {
    let icon: String
    let text: String
    var body: some View {
                VStack {
                    Image(systemName: icon)
                        .font(.largeTitle)
                        .foregroundColor(.purple)
                    Text(text)
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
            }
        }

#Preview {
    FeatureBalanceView(icon: "bolt.fill", text: "Easy & Fast\nPayments")
}
