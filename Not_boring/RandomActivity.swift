//
//  PersonView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct RandomActivity: View {
    let typeActivity: TypeActivity

    @StateObject private var viewModel = ViewModel()
    @State var activity = "are you bored? press tte button"

    var body: some View {
        ZStack {
            VStack {
                Text(typeActivity.rawValue)
                Text(viewModel.activity?.activity ?? "1")
                Spacer()
                Text(activity)
                Spacer()
                MainButtonView(typeActivity: typeActivity)
                Spacer()
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        RandomActivity(typeActivity: .general)
    }
}
