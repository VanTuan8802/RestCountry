//
//  HomeView.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 3/9/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HeaderView(title: "Countries Info", showBack: false)

            Spacer()
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    HomeView()
}
