//
//  TextView.swift
//  Not_boring
//
//  Created by Oksenoyt on 12.07.2023.
//

import SwiftUI

struct TextView: View {
    @Binding var opacity: Double

    let content: String

    var body: some View {
        VStack {
            Text(content)
                .font(.system(size: 26,weight: .semibold, design: .rounded))
                .frame(width: 200, height: 200)
                .opacity(opacity)
                .animation(.easeInOut(duration: 3))
                .foregroundColor(.green)
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(opacity: Binding.constant(0.0), content: "qweqweqwe")
    }
}
