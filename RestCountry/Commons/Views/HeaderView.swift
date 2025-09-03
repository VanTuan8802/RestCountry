//
//  HeaderView.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 3/9/25.
//

import SwiftUI

struct HeaderView: View {

    var title: String
    var showBack: Bool
    var backAction: (() -> Void)?

    init(title: String, showBack: Bool, backAction: (() -> Void)? = nil) {
        self.title = title
        self.showBack = showBack
        self.backAction = backAction
    }

    var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(colors: [.color84BAFF, .color2B92F2], startPoint: .top, endPoint: .bottom)

            HStack {
                if showBack {
                    Button(action: {
                        backAction?()
                    }, label: {
                        Image(.icBack)
                    })
                    Spacer()
                    Text(title)
                        .font(.semibold20)
                        .foregroundStyle(Color.white)
                    Spacer()
                    Spacer()
                        .frame(width: 20)
                } else {
                    Text(title)
                        .font(.semibold20)
                        .foregroundStyle(Color.white)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 54)
        }
        .frame(height: 90)
        .radius(topLeading: 0, bottomLeading: 24, bottomTrailing: 24, topTrailing: 0)
    }
}

#Preview {
    HeaderView(title: "Tuấn", showBack: true)
}
