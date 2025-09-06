//
//  ContinentItemView.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 3/9/25.
//

import SwiftUI

struct ContinentItemView: View {
    var continent: ContinentEnum

    var body: some View {
        ZStack {
            Color.colorF1F5FF
                .radius16

            VStack(spacing: 8) {
                continent.imageName

                Text(continent.name)
                    .font(.headline)
                    .foregroundColor(Color.color212121)
            }
            .padding()
        }
    }
}
