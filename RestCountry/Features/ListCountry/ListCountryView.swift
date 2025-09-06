//
//  ListCountryView.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 4/9/25.
//

import SwiftUI
import Factory

struct ListCountryView: View {

    @StateObject private var viewModel: ListCountryViewModel
    @InjectedObject(\.app) internal var app: AppManager

    init(continent: ContinentEnum) {
        _viewModel = StateObject(wrappedValue: ListCountryViewModel(continent: continent))
    }

    var body: some View {
        VStack {
            HeaderView(
                title: viewModel.continent.name,
                showBack: true,
                backAction: {
                    app.navi.pop()
                })
            searchView
            gridView
        }
        .ignoresSafeArea()
    }

    @MainActor @ViewBuilder
    private var searchView: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search country", text: $viewModel.searchText)
                .textFieldStyle(PlainTextFieldStyle())
                .autocapitalization(.none)
                .disableAutocorrection(true)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .padding(.horizontal, 20)
    }

    @MainActor @ViewBuilder
    private var gridView: some View {
        let columns = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16)
        ]
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(viewModel.filteredCountries, id: \.self) { country in
                    GeometryReader { geo in
                        CountryItemView(country: country)
                            .frame(width: geo.size.width,
                                   height: geo.size.width )
                            .onTapGesture {
                                // app.navi.push(.listCoutries(continent: continent))
                            }
                    }
                    .aspectRatio(1, contentMode: .fit)
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
    }
}

#Preview {
    ListCountryView(continent: .asia)
}
