import SwiftUI

enum Destination: Equatable {
    static func == (lhs: Destination, rhs: Destination) -> Bool {
        String(describing: lhs) == String(describing: rhs)
    }

    case home
    case listCoutries(continent: ContinentEnum)
}

extension Destination {
    var identifier: String {
        switch self {
        case .home: return "home"
        case .listCoutries: return "listCoutries"
        }
    }
}

extension Navigation {
    @ViewBuilder
    internal func screen(for destinationWrapper: DestinationWrapper) -> some View {
        switch destinationWrapper.destination {
        case .home:
            HomeView()
        case .listCoutries(let continent):
            ListCountryView(continent: continent)
        }
    }
}
