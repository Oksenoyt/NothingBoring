//
//  MainButtonView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct MainButtonView: View {
    let typeActivity: TypeActivity
    
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        Button(action: action) {
            ZStack {
                Image(systemName: "chevron.left")
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width: 100, height: 100)
                   .cornerRadius(10)
                Rectangle()
                    .foregroundColor(.green)
                    .opacity(0.5)
                    .frame(width: 250, height: 110)
                    .cornerRadius(30)
            }
        }
    }

    private func action() {
        print(typeActivity)
        viewModel.fetchData(typeActivity: typeActivity)
    }

}

struct MainButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MainButtonView(typeActivity: .charity, viewModel: ViewModel())
    }
}
