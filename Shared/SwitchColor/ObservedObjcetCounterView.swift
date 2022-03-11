//
//  ObservedObjcetCounterView.swift
//  PropertyWrapper
//
//  Created by tomoyo_kageyama on 2022/03/11.
//

import SwiftUI

struct ObservedObjcetCounterView: View {
    @ObservedObject private var dataSource = DataSource()
    var body: some View {
        VStack {
            Button("increment counter") {
                dataSource.counter += 1
            }
            Text("ObservedObject count： \(dataSource.counter)")
                .font(.title)
        }
    }
}

struct ObservedObjcetCounterView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjcetCounterView()
    }
}
