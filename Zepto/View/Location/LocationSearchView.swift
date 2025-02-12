//
//  LocationSearchView.swift
//  Zepto
//
//  Created by Celestial on 10/02/25.
//

import SwiftUI
import MapKit

struct LocationSearchView: View {
    @State private var searchText = ""
    @State private var searchResults: [MKMapItem] = []

    var body: some View {
        VStack {
            TextField("Search a new address", text: $searchText, onCommit: {
                performSearch()
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()

            List(searchResults, id: \.self) { item in
                Text(item.placemark.name ?? "Unknown")
            }
        }
    }

    private func performSearch() {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchText

        let search = MKLocalSearch(request: request)
        search.start { response, error in
            if let response = response {
                searchResults = response.mapItems
            }
        }
    }
}


#Preview {
    LocationSearchView()
}
