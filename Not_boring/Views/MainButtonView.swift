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
            VStack {
                Text("get activity")
                    .font(.system(size: 26,weight: .semibold, design: .rounded))
                    .frame(width: 130, height: 130)
                    .background(
                        ZStack {
                            Circle().fill(CustomColor.conceptual)
                            Circle()
                                .foregroundColor(CustomColor.lightGreen)
                                .blur(radius: 5)
                                .offset(x: -8, y: -8)
                            Circle()
                                .fill(
                                    RadialGradient(
                                        gradient: Gradient(colors: [.green, CustomColor.conceptual]),
                                        center: .bottomTrailing,
                                                        startRadius: 0,
                                                        endRadius: 110
                                    )
//                                    GradientView()
                                )
                                .padding(3)
                        }
                    )
                    .clipShape(Circle())
                    .shadow(color: CustomColor.darckGreen, radius: 30, x: 20, y: 20)
                    .shadow(color: CustomColor.lightGreen, radius: 30, x: -20, y: -20)

            }
        }
    }

//    struct GradientView: View {
//        var body: some View {
//            LinearGradient(
//                gradient: Gradient(colors: [Color(.white), Color(.green)]),
//                startPoint: .topLeading,
//                endPoint: .bottomTrailing
//            )
//        }
//    }

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
