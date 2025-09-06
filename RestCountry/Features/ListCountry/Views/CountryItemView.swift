//
//  CountryItemView.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 4/9/25.
//

import SwiftUI
import Kingfisher

struct CountryItemView: View {
    var country: CountryModel

    var body: some View {
        VStack(spacing: 12) {
            KFImage(URL(string: country.flags?.png ?? ""))
                .resizable()
                .fade(duration: 0.25)
                .radius4

            Text(country.name.common)
                .font(.medium12)
                .foregroundColor(Color.color212121)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 12)
        .background(Color.colorF1F5FF)
        .radius10
    }
}
