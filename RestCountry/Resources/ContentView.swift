//
//  ContentView.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 3/9/25.
//

import SwiftUI
import Factory

struct ContentView: View {
    @StateObject private var homeNavi = Navigation()

    @InjectedObject(\.app) private var app: AppManager

    var body: some View {
        NavigationRoot(destination: .home,
                       navigation: homeNavi)
        .onAppear {
            app.navi = homeNavi
        }
        .toolbar(.hidden, for: .tabBar)
    }
}
