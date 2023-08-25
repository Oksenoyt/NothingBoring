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
                        .foregroundColor(CustomColor.brazilianGreen)
                        .font(.system(size: 20,weight: .semibold, design: .rounded))
                }
            }
            .pickerStyle(InlinePickerStyle())
            .onChange(of: selectedOption) { index in
                viewModel.saveActivityType(item: options[index])
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView(viewModel: ViewModel(), options: ["for one", "for company"])
    }
}
