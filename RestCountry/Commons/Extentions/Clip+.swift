//
//  Clip+.swift
//  RestCountry
//
//  Created by Tuấn Nguyễn on 3/9/25.
//

import Foundation
import SwiftUI

extension View {

    var radius16: some View {
        self.clipShape(RoundedRectangle(cornerRadius: 16))
    }

    var radius24: some View {
        self.clipShape(RoundedRectangle(cornerRadius: 24))
    }

    func radius(topLeading: CGFloat, bottomLeading: CGFloat, bottomTrailing: CGFloat, topTrailing: CGFloat) -> some View {
        self.clipShape(
            .rect(topLeadingRadius: topLeading,
                  bottomLeadingRadius: bottomLeading,
                  bottomTrailingRadius: bottomTrailing,
                  topTrailingRadius: topTrailing)
        )
    }

    func radius(_ allCorners: CGFloat) -> some View {
        self.clipShape(
            .rect(topLeadingRadius: allCorners,
                  bottomLeadingRadius: allCorners,
                  bottomTrailingRadius: allCorners,
                  topTrailingRadius: allCorners)
        )
    }
}
