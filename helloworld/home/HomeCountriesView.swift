//
//  HomeCountriesView.swift
//  helloworld
//
//  Created by Felipe Zadinello on 27.06.25.
//

import SwiftUI
import Foundation

struct HomeCountriesView: View {
    @StateObject private var viewModel = HomeCountriesViewModel()

    var body: some View {
        NavigationStack {
            List {
                Section("Countries") {
                    ForEach(viewModel.countries.indices, id: \.self) { index in
                        NavigationLink(value: viewModel.countries[index].name) {
                            Text(viewModel.countries[index].name)
                                .foregroundColor(index == viewModel.highlightedIndex ? .white : .primary)
                                .padding()
                                .background(index == viewModel.highlightedIndex ? Color.blue : Color.clear)
                                .cornerRadius(8)
                        }
                    }
                }
            }
            .navigationTitle("Countries")
        }
    }
}

#Preview {
    HomeCountriesView()
}
