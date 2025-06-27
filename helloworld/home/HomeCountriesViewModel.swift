//
//  HomeCountriesViewModel.swift
//  helloworld
//
//  Created by Felipe Zadinello on 27.06.25.
//

import Foundation

// ViewModel
class HomeCountriesViewModel: ObservableObject {
    @Published private(set) var countries: [Country] = [
        Country(name: "Brazil"),
        Country(name: "United States"),
        Country(name: "Canada")
    ]
    @Published private(set) var highlightedIndex: Int = 1
}
