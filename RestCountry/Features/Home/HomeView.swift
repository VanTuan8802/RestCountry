//
//  HomeView.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 3/9/25.
//

import SwiftUI
import Factory

struct HomeView: View {

    @InjectedObject(\.app) internal var app: AppManager
    
    var body: some View {
        VStack {
            HeaderView(title: "Countries Info", showBack: false)

            gridView
        }
        .ignoresSafeArea(.all)
    }

    @MainActor @ViewBuilder
       private var gridView: some View {
            let columns = [
                  GridItem(.flexible(), spacing: 16),
                  GridItem(.flexible(), spacing: 1)
              ]
           ScrollView {
               LazyVGrid(columns: columns, spacing: 16) {
                   ForEach(ContinentEnum.allCases, id: \.self) { continent in
                       GeometryReader { geo in
                           ContinentItemView(continent: continent)
                               .frame(width: geo.size.width,
                                      height: geo.size.width * 0.9)
                       }
                       .aspectRatio(1/0.9, contentMode: .fit)
                   }
               }
               .padding(.horizontal, 20)
               .padding(.top, 20)
           }
       }
}

#Preview {
    HomeView()
}
