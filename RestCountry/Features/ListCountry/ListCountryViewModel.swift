//
//  ListCountryViewModel.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 4/9/25.
//

import Foundation

final class ListCountryViewModel: ObservableObject {
    @Published var listCoutries: [CountryModel] = []
    @Published var searchText: String = ""

    var continent: ContinentEnum = .asia
    
    init(continent: ContinentEnum) {
        self.continent = continent
        
        Task {
            await fetchData()
        }
    }

    var filteredCountries: [CountryModel] {
            if searchText.isEmpty {
                return listCoutries
            } else {
                return listCoutries.filter { country in
                    country.name.common.localizedCaseInsensitiveContains(searchText)
                }
            }
        }

    @MainActor
    private func fetchData() {
        Task {
            do {
                var countries: [CountryModel] = try await APIService.shared.request(.continent(continent.apiValue))

                if let filter = continent.subregionFilter {
                    countries = countries.filter { country in
                        country.subregion?.localizedCaseInsensitiveContains(filter) == true
                    }
                }

                self.listCoutries = countries
            } catch {
                print("❌ Error: \(error.localizedDescription)")
            }
        }
    }

}
