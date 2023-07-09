//
//  PersonView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct RandomActivity: View {
    private let typeActivity = TypeActivity .general

    @StateObject private var viewModel = ViewModel()
//    @State var activity = "are you bored? press tte button"

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text(viewModel.activity?.activity ?? "")
                Spacer()
//                Text(activity)
                Spacer()
                MainButtonView(typeActivity: typeActivity, viewModel: viewModel)
                Spacer()
            }
        }
    }
}


struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        RandomActivity()
    }
}
