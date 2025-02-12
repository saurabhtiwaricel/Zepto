//
//  NotificationsView.swift
//  Zepto
//
//  Created by Celestial on 11/02/25.
//

import SwiftUI

struct NotificationsView: View {
    @State private var isWhatsAppEnabled = true
    @State private var isPushEnabled = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .font(.title2)
                }
                Spacer()
                Text("Notifications")
                    .font(.headline)
                    .bold()
                Spacer()
            }
            .padding()

            List {
                Toggle(isOn: $isWhatsAppEnabled) {
                    VStack(alignment: .leading) {
                        Text("WhatsApp Messages")
                            .font(.headline)
                        Text("Get updates from us on WhatsApp")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                Toggle(isOn: $isPushEnabled) {
                    VStack(alignment: .leading) {
                        Text("Push notifications")
                            .font(.headline)
                        Text("Turn on to get live order updates & offers")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .listStyle(.plain)
        }
        .background(Color(.systemGroupedBackground))
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NotificationsView()
}
