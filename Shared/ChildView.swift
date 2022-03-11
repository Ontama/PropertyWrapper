//
//  ChildView.swift
//  PropertyWrapper
//
//  Created by tomoyo_kageyama on 2022/03/11.
//

import SwiftUI

struct ChildView: View {
    @Binding var counter: Int
    var body: some View {
        Button(action: {
            counter += 1
        }, label: {
            Text("\(counter)")
                .font(.title)
        })
            .border(Color.red)
    }
}

//struct ChildView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChildView(counter: 0)
//    }
//}
