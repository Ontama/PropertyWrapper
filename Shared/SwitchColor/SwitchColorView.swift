//
//  SwitchColorView.swift
//  PropertyWrapper
//
//  Created by tomoyo_kageyama on 2022/03/11.
//

import SwiftUI

struct SwitchColorView: View {
    @State private var isDanger: Bool = false
    var body: some View {
        VStack {
            Button("Change the Color") {
                isDanger.toggle()
            }
            if isDanger {
                Circle().foregroundColor(.red)
                    .frame(width: 200, height: 200)
            } else {
                Circle().foregroundColor(.green)
                    .frame(width: 200, height: 200)
            }
            StateObjectCounterView()
            ObservedObjcetCounterView()
            Spacer()
        }
    }
}

struct SwitchColorView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchColorView()
    }
}
