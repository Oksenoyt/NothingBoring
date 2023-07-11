//
//  PickerView.swift
//  Not_boring
//
//  Created by Oksenoyt on 08.07.2023.
//

import SwiftUI

struct PickerView: View {
    @State private var selectedOption = 0

    @ObservedObject var viewModel: ViewModel
    
    let options: [String]

    var body: some View {
            Picker("Select option", selection: $selectedOption) {
                ForEach(options.indices, id: \.self) { index in
                    Text(options[index])
                        .foregroundColor(Color("green"))
                        .font(.system(size: 20,weight: .semibold, design: .rounded))
                }
            }
            .pickerStyle(InlinePickerStyle())
            .onChange(of: selectedOption) { index in
                print(options[index])
                viewModel.saveActivityType(item: options[index])
//                var newValue: Int {
//                    options[index] == "for one" ? 1 : 2
//                }
//                viewModel.activity?.participants = newValue
//                print(newValue)

        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView(viewModel: ViewModel(), options: ["for one", "for company"])
    }
}
