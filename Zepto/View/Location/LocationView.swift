//
//  LocationView.swift
//  Zepto
//
//  Created by Celestial on 10/02/25.
//

import SwiftUI

struct LocationView: View {
    @StateObject private var locationManager = LocationManager()
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            VStack {
                Text("Your Location")
                    .font(.title)
                    .bold()
                
                LocationSearchView()
                
                if let location = locationManager.userLocation {
                    Text("Current Location: \(location.latitude), \(location.longitude)")
                } else {
                    Button("Enable Current Location") {
                        locationManager.startUpdatingLocation()
                    }
                    .buttonStyle(.bordered)
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            HStack {
                                Image(systemName: "chevron.left")
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
    }
}


#Preview {
    LocationView()
}
