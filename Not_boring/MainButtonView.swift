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
//            VStack {
//                Text("get activity")
//                    .font(.system(size: 23,weight: .semibold, design: .rounded))
//                    .frame(width: 200, height: 60)
//                    .background(
//                        ZStack {
//                            Color("green2")
//                            RoundedRectangle(cornerRadius: 16, style: .continuous)
//                                .foregroundColor(Color("lightGreen"))
//                                .blur(radius: 5)
//                                .offset(x: -8, y: -8)
//                            RoundedRectangle(cornerRadius: 16, style: .continuous)
//                                .fill(
//                                    LinearGradient(
//                                        gradient:
//                                            Gradient(colors: [Color("green2"), Color(.green)]),
//                                        startPoint: .topLeading,
//                                        endPoint: .bottomTrailing
//                                    )
////                                    GradientView()
//                                )
//                                .padding(3)
//                        }
//                    )
//                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
//                    .shadow(color: Color("darckGreen"), radius: 10, x: 10, y: 20)
//                    .shadow(color: Color("green3"), radius: 20, x: -20, y: -20)
//                    .foregroundColor(Color .white)
//            }
            VStack {
                Text("get activity")
                    .font(.system(size: 26,weight: .semibold, design: .rounded))
                    .frame(width: 130, height: 130)
                    .background(
                        ZStack {
                            Color("green2")
                            Circle()
                                .foregroundColor(Color("lightGreen"))
                                .blur(radius: 5)
                                .offset(x: -8, y: -8)
                            Circle()
                                .fill(
                                    LinearGradient(
                                        gradient:
                                            Gradient(colors: [Color("green2"), Color(.green)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
//                                    GradientView()
                                )
                                .padding(3)
                        }
                    )
                    .clipShape(Circle())
                    .shadow(color: Color("darckGreen"), radius: 30, x: 20, y: 20)
                    .shadow(color: Color("green3"), radius: 30, x: -20, y: -20)

            }
//            .frame(width: 400, height: 500)
//            .background(Image("fon")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .edgesIgnoringSafeArea(.all))
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
